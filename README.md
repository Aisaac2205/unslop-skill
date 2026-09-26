# unslop-skill

A bilingual (English/Spanish) editorial rewrite skill. It removes common AI-writing patterns from text and enforces documented grammar and style rules: RAE and Fundéu norms for Spanish, Chicago Manual of Style / APA / plain-language norms for English. It covers technical documentation, UX copy for dashboards, SEO content, and formal documents. It is for writers, developers, and technical teams who want a consistent, source-backed editorial pass instead of a generic "make this sound better" rewrite.

## Quick install

```bash
npx skills add Aisaac2205/unslop-skill
```

This installs the skill into whichever supported agent it detects on your machine. Or pick your platform below for the manual route. Claude Desktop and ChatGPT users can also grab the ready-made bundles from the [Releases page](https://github.com/Aisaac2205/unslop-skill/releases/latest).

## What it fixes

| Domain | Examples of what changes | Rules file |
|---|---|---|
| General grammar | AI clichés, filler openers, dash overuse, ALL CAPS, gerundio de posterioridad | `rules/{lang}/grammar.md` |
| Technical docs | Buried deliverables, vague callouts, adjectives instead of precision | `rules/{lang}/technical.md` |
| UX copy for dashboards | Vague error messages, ambiguous buttons, unclear empty states | `rules/{lang}/ux_dashboard.md` |
| SEO content | Buried answers, keyword stuffing, generic FAQ blocks | `rules/{lang}/seo.md` |
| Formal documents | Rhetorical questions, unsupported claims, decorative tables | `rules/{lang}/formal_docs.md` |

`{lang}` is `en` or `es`, matching the language of the input text.

## Usage

In Claude Code, run:

```
/unslop-skill <paste text, or a file path>
```

A file path is read as plain text; the skill loads and rewrites its contents. You can add a plain-language domain hint, such as "treat this as UX copy" or "this is SEO content," and the skill routes to the matching rules file. The output is the rewritten text plus a short change log listing which rules were applied.

Claude may also load this skill on its own, without the slash command, when it detects a rewrite request in English or Spanish.

## Install per platform

Windows users: `~` below means `%USERPROFILE%`. This is shown once in the Claude Code section and applies the same way everywhere else.

### Claude Code

Three installation routes exist.

**Route A: copy, clone, or symlink**

1. Choose a scope: personal (available in every project) or project (this repo only).
2. Personal scope: copy, clone, or symlink this folder to `~/.claude/skills/unslop-skill/` (Windows: `%USERPROFILE%\.claude\skills\unslop-skill\`).
3. Project scope: copy, clone, or symlink this folder to `<repo>/.claude/skills/unslop-skill/`.
4. If this is a brand-new top-level skills directory, run `/reload-skills`.
5. Invoke it: `/unslop-skill <text or file path>`.
6. Verify: run `/skills` and confirm `unslop-skill` is listed.

**Route B: universal installer**

1. Run `npx skills add Aisaac2205/unslop-skill` (add `-a claude-code` to target Claude Code specifically, `-g` for a global install, `-y` to skip prompts).
2. Invoke it: `/unslop-skill <text or file path>`.
3. Verify: run `/skills` and confirm `unslop-skill` is listed.

**Route C: plugin marketplace**

1. Run `claude plugin marketplace add Aisaac2205/unslop-skill`.
2. Run `claude plugin install unslop-skill@unslop-skill`.
3. Invoke it: `/unslop-skill:unslop-skill <text or file path>`. This route namespaces the command under the plugin name, unlike routes A and B.
4. Verify: run `/skills` and confirm the namespaced command is listed.

### Claude Desktop and claude.ai

1. Download `unslop-skill-X.Y.Z.zip` from the [Releases page](https://github.com/Aisaac2205/unslop-skill/releases/latest), or build it locally with `bash scripts/build-dist.sh` (Windows: `powershell -ExecutionPolicy Bypass -File scripts/build-dist.ps1`).
2. Confirm "Code execution and file creation" is enabled for your account. On Team or Enterprise, an org owner must enable "Cloud code execution and file creation" and "Skills" under Organization settings > Plugins & skills.
3. Open Settings (documented as "Settings > Features"; some support articles also call it "Customize > Skills" or "Settings > Capabilities". Look for a Skills item under Settings).
4. Upload `unslop-skill-X.Y.Z.zip`.
5. Requires a Pro, Max, Team, or Enterprise plan.
6. Verify: start a new chat and ask it to rewrite a short English or Spanish paragraph; confirm the output follows the domain rules.

The same claude.ai account shares this install across the web app, the Desktop app, and Cowork. It does not sync to the Claude API or to Claude Code; each surface needs its own upload.

For the Claude API, upload the same zip with `POST /v1/skills`, then reference the returned `skill_id` in `container.skills` on a request with the code execution tool enabled.

### Codex

1. Choose a scope: user (`~/.agents/skills/unslop-skill/`) or repo (`<repo>/.agents/skills/unslop-skill/`).
2. Copy or clone this folder into that path.
3. Codex detects the change automatically. Restart Codex if it does not appear.
4. Invoke it by typing `$unslop-skill` in chat, or run `/skills` and pick it from the list.
5. Verify: run `/skills` and confirm `unslop-skill` is listed.

The bundled `skill-installer` system skill installs into `~/.codex/skills` by default, a different path than `~/.agents/skills`. This is a documented, unresolved conflict (see `openai/skills` issue #420). Copy the folder into `.agents/skills` directly rather than relying on `skill-installer` for this skill. `$ARGUMENTS`-style substitution is not supported in Codex; pass the text or file path as a plain follow-up message instead.

### Cursor

1. Copy or clone this folder into `.cursor/skills/unslop-skill/` (project) or `~/.cursor/skills/unslop-skill/` (user). `.agents/skills/unslop-skill/` also works.
2. Cursor discovers it automatically on startup.
3. In Agent chat, type `/unslop-skill` and select it from the list. It attaches to that one message.
4. Optional: promote it to a Custom Mode for persistent use (Option+Enter on Mac, Alt+Enter on Windows).
5. Verify: type `/` in Agent chat and confirm `unslop-skill` appears.

Cursor also reads `.claude/skills/` and `.codex/skills/` for compatibility, so this folder works if it is already installed for one of those agents. If you would rather not add a skills folder, create `.cursor/rules/unslop-skill.mdc` with a `description`, an empty `globs`, and `alwaysApply: false`, and tell the agent in the rule body to read `SKILL.md`.

### ChatGPT

Plain ChatGPT (Projects, Custom GPTs) has no native Agent Skills support; that support lives under Codex and ChatGPT Work (see the Codex section above). Two workaround routes exist for a regular ChatGPT account. Both start the same way: download `unslop-skill-chatgpt-X.Y.Z.zip` from the [Releases page](https://github.com/Aisaac2205/unslop-skill/releases/latest) and unzip it. It contains five files: `01-instructions.md` (the `SKILL.md` body), `02-rules-en.md`, `03-rules-es.md`, `04-examples-en.md`, and `05-examples-es.md`.

**Route A: Project**

1. Create a ChatGPT Project.
2. Paste `01-instructions.md` into the project's custom instructions.
3. Upload the other four files, `02-rules-en.md` through `05-examples-es.md`. This fits every plan's file cap (Free: 5 files; Go and Plus: 25 files; Edu, Pro, Business, Enterprise: 40 files).
4. Verify: ask it to rewrite a short paragraph and check the output follows the uploaded rules.

**Route B: Custom GPT**

1. Create a Custom GPT.
2. Paste `01-instructions.md` into Instructions. Check the current character limit in the GPT editor itself; this is not confirmed in official docs. If it does not fit, keep only the Hard Rules, Decision Gates, and Execution Steps blocks.
3. Add the other four files, `02-rules-en.md` through `05-examples-es.md`, as Knowledge (20 files maximum).
4. Verify: ask it to rewrite a short paragraph and check it names the domain rule it applied.

## Publishing

### Release artifacts

The release workflow (`.github/workflows/release.yml`) builds two zips on every `vX.Y.Z` tag and attaches them to the GitHub release: `unslop-skill-X.Y.Z.zip` (top-level folder `unslop-skill/` with `SKILL.md`, `rules/`, and `examples/`, for Claude Desktop, claude.ai, Cowork, and the Claude API) and `unslop-skill-chatgpt-X.Y.Z.zip` (the five-file ChatGPT bundle described above).

Build the same artifacts locally with `bash scripts/build-dist.sh` or `powershell -ExecutionPolicy Bypass -File scripts/build-dist.ps1`; both write to `dist/`. If you would rather not run the script, zip the folder by hand so its top level is `unslop-skill/`, containing `SKILL.md`, `rules/`, and `examples/`.

### Appear on skills.sh

There is no submission form. The Vercel knowledge base guide on Agent Skills says it directly:

> There is no formal publish command. Instead: 1. Put it in a git repo. 2. Share the repo. 3. When people install it via npx skills add, it can show up on skills.sh automatically via install telemetry.

The skills.sh FAQ confirms the mechanism is anonymous telemetry:

> Skills appear on the leaderboard automatically through anonymous telemetry when users run `npx skills add <owner/repo>`.

The only requirement is a public repo with a valid `SKILL.md` that the CLI's discovery walk finds; a root-level `SKILL.md`, as in this repository, works. Once the repo is public, the maintainer can trigger the first listing by running `npx skills add Aisaac2205/unslop-skill` once. A curated "official" tier exists in the skills.sh API, but it has no documented application path for third-party repos.

### Claude Code marketplace and Anthropic directory

- Keep `SKILL.md`, `rules/`, and `examples/` at the repository root. `npx skills add` discovers a root `SKILL.md` with no extra configuration.
- For the Claude Code plugin marketplace, keep `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json` at the root, as in this repository.
- Optional: submit to Anthropic's skill directory at claude.ai/directory/manage. This requires a paid claude.ai plan.
- Validate the folder structure with the `skills-ref` validator: `github.com/agentskills/agentskills`.

## Versioning

This project follows semantic versioning. The source of truth is the `version` field in `.claude-plugin/plugin.json`, mirrored in `SKILL.md`'s `metadata.version`.

Release steps: update `CHANGELOG.md`, bump both version fields, commit as `chore(release): vX.Y.Z`, tag it, and push the tag; GitHub Actions then builds and attaches the release artifacts.

See `VERSIONING.md` for the full procedure and `CHANGELOG.md` for the release history.

## How the rules are sourced

Every rule in `rules/` is either tied to a documented institutional source or explicitly labeled as editorial policy. Rules draw on:

- RAE (Ortografía 2010, Diccionario panhispánico de dudas)
- FundéuRAE
- Chicago Manual of Style
- APA 7
- plainlanguage.gov
- Google developer documentation style guide
- Microsoft Writing Style Guide
- Material Design
- Apple Human Interface Guidelines
- Shopify Polaris
- Nielsen Norman Group
- Google Search Central
- Wikipedia, "Signs of AI writing"
- Kobak et al. 2025

Every rules file ends with a Sources section listing the institutions and URLs it draws on. A rule with no official source is labeled "Editorial policy" so it is never mistaken for a documented norm.

## Repository layout

```
unslop-skill/
├── .github/
│   └── workflows/
│       └── release.yml
├── .claude-plugin/
│   ├── plugin.json
│   └── marketplace.json
├── scripts/
│   ├── build-dist.sh
│   └── build-dist.ps1
├── SKILL.md
├── README.md
├── README.es.md
├── CHANGELOG.md
├── VERSIONING.md
├── LICENSE
├── .gitignore
├── rules/
│   ├── en/
│   │   ├── grammar.md
│   │   ├── technical.md
│   │   ├── ux_dashboard.md
│   │   ├── seo.md
│   │   └── formal_docs.md
│   └── es/
│       ├── grammar.md
│       ├── technical.md
│       ├── ux_dashboard.md
│       ├── seo.md
│       └── formal_docs.md
└── examples/
    ├── en/
    │   ├── technical.md
    │   ├── corporate.md
    │   ├── ux_dashboard.md
    │   ├── seo.md
    │   └── formal_docs.md
    └── es/
        ├── technical.md
        ├── corporate.md
        ├── ux_dashboard.md
        ├── seo.md
        └── formal_docs.md
```

## Contributing

- Keep `rules/en/<domain>.md` and `rules/es/<domain>.md` mirrored: the same numbered sections, in the same order, per domain.
- Cite an official source in brackets at the end of each rule, or label it `[Editorial policy]` if none exists. Never invent a source.
- Add at least one before/after example to the matching file in `examples/` for any new rule.

## License

MIT. See `LICENSE`.
