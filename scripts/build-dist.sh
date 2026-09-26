#!/usr/bin/env bash
# Build distribution artifacts for unslop-skill.
#
# Produces, under dist/:
#   unslop-skill-<version>.zip          - Claude Desktop / claude.ai / Claude API bundle
#                                          (top-level folder inside the zip: unslop-skill/)
#   unslop-skill-chatgpt-<version>.zip  - ChatGPT Custom GPTs / Projects bundle
#                                          (five markdown files at the zip root)
#   chatgpt/01-instructions.md .. 05-examples-es.md - the same five files, unzipped
#
# Requires one of: zip, python3/python (zipfile module), or PowerShell 5+
# (via powershell.exe, used automatically on Windows when zip/python3 are absent).
#
# Usage: bash scripts/build-dist.sh
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
cd "${REPO_ROOT}"

PLUGIN_JSON=".claude-plugin/plugin.json"
DIST_DIR="dist"
SKILL_DIR_NAME="unslop-skill"

log() { printf '%s\n' "$*" >&2; }
die() { log "error: $*"; exit 1; }

# ---------------------------------------------------------------------------
# 1. Read the version from plugin.json (grep/sed only, no jq dependency).
# ---------------------------------------------------------------------------
[ -f "${PLUGIN_JSON}" ] || die "missing ${PLUGIN_JSON}; run this script from the repo root"

VERSION="$(grep -m1 '"version"' "${PLUGIN_JSON}" | sed -E 's/^[^"]*"version"[[:space:]]*:[[:space:]]*"([^"]+)".*/\1/')"
[ -n "${VERSION}" ] || die "could not read \"version\" from ${PLUGIN_JSON}"
log "==> Building unslop-skill distribution artifacts for version ${VERSION}"

# ---------------------------------------------------------------------------
# 2. Validate required sources exist before touching anything.
# ---------------------------------------------------------------------------
REQUIRED_PATHS=("SKILL.md" "rules/en" "rules/es" "examples/en" "examples/es")
for p in "${REQUIRED_PATHS[@]}"; do
  [ -e "${p}" ] || die "required source path missing: ${p} (needed to build dist/)"
done

RULE_DOMAINS=(grammar technical ux_dashboard seo formal_docs)

# ---------------------------------------------------------------------------
# 3. Pick an archiver: zip > python3/python -m zipfile > PowerShell (Windows).
# ---------------------------------------------------------------------------
ARCHIVER=""
PYBIN=""
if command -v zip >/dev/null 2>&1; then
  ARCHIVER="zip"
elif command -v python3 >/dev/null 2>&1 && python3 -c 'import zipfile' >/dev/null 2>&1; then
  ARCHIVER="python"
  PYBIN="python3"
elif command -v python >/dev/null 2>&1 && python -c 'import zipfile' >/dev/null 2>&1; then
  ARCHIVER="python"
  PYBIN="python"
elif command -v powershell.exe >/dev/null 2>&1; then
  ARCHIVER="powershell"
else
  die "no zip tool available: install 'zip', install python3 (with the zipfile module), or run on Windows with powershell.exe on PATH"
fi
log "==> Using archiver: ${ARCHIVER}"

# to_winpath: convert a POSIX-ish path (as seen by Git Bash) to a Windows path
# for consumption by powershell.exe.
to_winpath() {
  if command -v cygpath >/dev/null 2>&1; then
    cygpath -w "$1"
  else
    printf '%s' "$1" | sed -E 's#^/([a-zA-Z])/#\1:/#; s#/#\\#g'
  fi
}

# make_zip_dir SRC_PARENT_DIR FOLDER_NAME OUTPUT_ZIP_ABS
# Zips FOLDER_NAME (found inside SRC_PARENT_DIR) so the archive's top-level
# entry is FOLDER_NAME/...
make_zip_dir() {
  src_parent="$1"
  folder_name="$2"
  out_zip="$3"
  rm -f "${out_zip}"
  case "${ARCHIVER}" in
    zip)
      (cd "${src_parent}" && zip -r -X -q "${out_zip}" "${folder_name}")
      ;;
    python)
      (cd "${src_parent}" && "${PYBIN}" -m zipfile -c "${out_zip}" "${folder_name}")
      ;;
    powershell)
      win_src="$(to_winpath "${src_parent}/${folder_name}")"
      win_dst="$(to_winpath "${out_zip}")"
      powershell.exe -NoProfile -ExecutionPolicy Bypass -Command \
        "Compress-Archive -Path '${win_src}' -DestinationPath '${win_dst}' -Force" \
        || die "PowerShell Compress-Archive failed for ${out_zip}"
      ;;
  esac
  [ -f "${out_zip}" ] || die "failed to create ${out_zip}"
}

# make_zip_flat SRC_DIR OUTPUT_ZIP_ABS FILE...
# Zips the given files (which live directly in SRC_DIR) at the archive root,
# with no wrapping folder.
make_zip_flat() {
  src_dir="$1"
  out_zip="$2"
  shift 2
  rm -f "${out_zip}"
  case "${ARCHIVER}" in
    zip)
      (cd "${src_dir}" && zip -X -q "${out_zip}" "$@")
      ;;
    python)
      (cd "${src_dir}" && "${PYBIN}" -m zipfile -c "${out_zip}" "$@")
      ;;
    powershell)
      win_dst="$(to_winpath "${out_zip}")"
      win_files=""
      for f in "$@"; do
        wf="$(to_winpath "${src_dir}/${f}")"
        win_files="${win_files}'${wf}',"
      done
      win_files="${win_files%,}"
      powershell.exe -NoProfile -ExecutionPolicy Bypass -Command \
        "Compress-Archive -Path @(${win_files}) -DestinationPath '${win_dst}' -Force" \
        || die "PowerShell Compress-Archive failed for ${out_zip}"
      ;;
  esac
  [ -f "${out_zip}" ] || die "failed to create ${out_zip}"
}

# ---------------------------------------------------------------------------
# 4. Clean slate.
# ---------------------------------------------------------------------------
rm -rf "${DIST_DIR}"
mkdir -p "${DIST_DIR}/${SKILL_DIR_NAME}/rules" "${DIST_DIR}/${SKILL_DIR_NAME}/examples" "${DIST_DIR}/chatgpt"

# ---------------------------------------------------------------------------
# 5. Assemble the Claude Desktop / claude.ai / Claude API bundle.
# ---------------------------------------------------------------------------
cp "SKILL.md" "${DIST_DIR}/${SKILL_DIR_NAME}/SKILL.md"
cp -r "rules/en" "${DIST_DIR}/${SKILL_DIR_NAME}/rules/en"
cp -r "rules/es" "${DIST_DIR}/${SKILL_DIR_NAME}/rules/es"
cp -r "examples/en" "${DIST_DIR}/${SKILL_DIR_NAME}/examples/en"
cp -r "examples/es" "${DIST_DIR}/${SKILL_DIR_NAME}/examples/es"

SKILL_ZIP="${DIST_DIR}/${SKILL_DIR_NAME}-${VERSION}.zip"
make_zip_dir "${REPO_ROOT}/${DIST_DIR}" "${SKILL_DIR_NAME}" "${REPO_ROOT}/${SKILL_ZIP}"

# ---------------------------------------------------------------------------
# 6. Assemble the five ChatGPT knowledge files.
# ---------------------------------------------------------------------------
CHATGPT_DIR="${DIST_DIR}/chatgpt"

# 01-instructions.md: SKILL.md body without the YAML frontmatter, prefixed by
# one explanatory line.
{
  printf '%s\n\n' "Instructions for the unslop-skill editorial rewrite skill. Files 02 to 05 are the rule and example sets; read the matching language and domain file before rewriting."
  awk 'BEGIN{d=0} /^---[[:space:]]*$/{d++; next} d>=2{print}' "SKILL.md" | sed '/./,$!d'
} > "${CHATGPT_DIR}/01-instructions.md"

if grep -q '^---[[:space:]]*$' "${CHATGPT_DIR}/01-instructions.md"; then
  die "01-instructions.md still contains a --- frontmatter delimiter; check SKILL.md's frontmatter format"
fi

# concat_domain_files LANG_DIR OUT_FILE
# Concatenates the domain files in LANG_DIR in the fixed editorial order
# (grammar, technical, ux_dashboard, seo, formal_docs), then appends any
# other *.md files found alphabetically, each preceded by a
# "<!-- file: <path> -->" marker line.
concat_domain_files() {
  lang_dir="$1"
  out_file="$2"
  : > "${out_file}"
  seen=""
  for domain in "${RULE_DOMAINS[@]}"; do
    f="${lang_dir}/${domain}.md"
    if [ -f "${f}" ]; then
      printf '<!-- file: %s -->\n\n' "${f}" >> "${out_file}"
      cat "${f}" >> "${out_file}"
      printf '\n\n' >> "${out_file}"
      seen="${seen} ${domain}.md"
    fi
  done
  for f in "${lang_dir}"/*.md; do
    [ -e "${f}" ] || continue
    base="$(basename "${f}")"
    case " ${seen} " in
      *" ${base} "*) continue ;;
    esac
    printf '<!-- file: %s -->\n\n' "${f}" >> "${out_file}"
    cat "${f}" >> "${out_file}"
    printf '\n\n' >> "${out_file}"
  done
}

concat_domain_files "rules/en" "${CHATGPT_DIR}/02-rules-en.md"
concat_domain_files "rules/es" "${CHATGPT_DIR}/03-rules-es.md"
concat_domain_files "examples/en" "${CHATGPT_DIR}/04-examples-en.md"
concat_domain_files "examples/es" "${CHATGPT_DIR}/05-examples-es.md"

CHATGPT_ZIP="${DIST_DIR}/${SKILL_DIR_NAME}-chatgpt-${VERSION}.zip"
make_zip_flat "${REPO_ROOT}/${CHATGPT_DIR}" "${REPO_ROOT}/${CHATGPT_ZIP}" \
  "01-instructions.md" "02-rules-en.md" "03-rules-es.md" "04-examples-en.md" "05-examples-es.md"

# ---------------------------------------------------------------------------
# 7. Summary.
# ---------------------------------------------------------------------------
log ""
log "==> Build complete. Artifacts:"
for f in "${SKILL_ZIP}" "${CHATGPT_ZIP}" \
         "${CHATGPT_DIR}/01-instructions.md" "${CHATGPT_DIR}/02-rules-en.md" \
         "${CHATGPT_DIR}/03-rules-es.md" "${CHATGPT_DIR}/04-examples-en.md" \
         "${CHATGPT_DIR}/05-examples-es.md"; do
  size="$(wc -c < "${f}" | tr -d ' ')"
  log "    ${f} (${size} bytes)"
done
