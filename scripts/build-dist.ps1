#Requires -Version 5.0
<#
.SYNOPSIS
    Build distribution artifacts for unslop-skill (PowerShell equivalent of
    scripts/build-dist.sh). Produces identical artifacts under dist/.

.DESCRIPTION
    Produces, under dist/:
      unslop-skill-<version>.zip          - Claude Desktop / claude.ai / Claude API bundle
                                             (top-level folder inside the zip: unslop-skill/)
      unslop-skill-chatgpt-<version>.zip  - ChatGPT Custom GPTs / Projects bundle
                                             (five markdown files at the zip root)
      chatgpt/01-instructions.md .. 05-examples-es.md - the same five files, unzipped

.EXAMPLE
    powershell -ExecutionPolicy Bypass -File scripts/build-dist.ps1
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$RepoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $RepoRoot

$PluginJson   = ".claude-plugin/plugin.json"
$DistDir      = "dist"
$SkillDirName = "unslop-skill"
$RuleDomains  = @('grammar', 'technical', 'ux_dashboard', 'seo', 'formal_docs')

function Fail($msg) {
    Write-Error "error: $msg"
    exit 1
}

# Windows PowerShell 5.1's Get-Content auto-detects encoding and falls back to
# the system ANSI codepage for files with no BOM, which mangles (double-
# encodes) our UTF-8 source files (accented Spanish characters, curly quotes).
# Read and write everything explicitly as UTF-8 without BOM instead.
$Utf8NoBom = New-Object System.Text.UTF8Encoding $false

function Read-Utf8Text([string]$Path) {
    return [System.IO.File]::ReadAllText($Path, $Utf8NoBom)
}

function Write-Utf8NoBom([string]$Path, [string]$Content) {
    [System.IO.File]::WriteAllText($Path, $Content, $Utf8NoBom)
}

# ---------------------------------------------------------------------------
# 1. Read the version from plugin.json (regex only, no dependency on a JSON
#    module version, so behavior matches the grep/sed-based bash script).
# ---------------------------------------------------------------------------
if (-not (Test-Path $PluginJson)) {
    Fail "missing $PluginJson; run this script from the repo root"
}

$pluginContent = Read-Utf8Text $PluginJson
$versionMatch = [regex]::Match($pluginContent, '"version"\s*:\s*"([^"]+)"')
if (-not $versionMatch.Success) {
    Fail "could not read `"version`" from $PluginJson"
}
$Version = $versionMatch.Groups[1].Value
Write-Host "==> Building unslop-skill distribution artifacts for version $Version"

# ---------------------------------------------------------------------------
# 2. Validate required sources exist before touching anything.
# ---------------------------------------------------------------------------
$RequiredPaths = @("SKILL.md", "rules/en", "rules/es", "examples/en", "examples/es")
foreach ($p in $RequiredPaths) {
    if (-not (Test-Path $p)) {
        Fail "required source path missing: $p (needed to build dist/)"
    }
}

# ---------------------------------------------------------------------------
# 3. Clean slate.
# ---------------------------------------------------------------------------
if (Test-Path $DistDir) {
    Remove-Item -Recurse -Force $DistDir
}
$SkillOut = Join-Path $DistDir $SkillDirName
New-Item -ItemType Directory -Force -Path (Join-Path $SkillOut "rules") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $SkillOut "examples") | Out-Null
$ChatgptDir = Join-Path $DistDir "chatgpt"
New-Item -ItemType Directory -Force -Path $ChatgptDir | Out-Null

# ---------------------------------------------------------------------------
# 4. Assemble the Claude Desktop / claude.ai / Claude API bundle.
# ---------------------------------------------------------------------------
Copy-Item "SKILL.md" (Join-Path $SkillOut "SKILL.md")
Copy-Item -Recurse "rules/en" (Join-Path $SkillOut "rules/en")
Copy-Item -Recurse "rules/es" (Join-Path $SkillOut "rules/es")
Copy-Item -Recurse "examples/en" (Join-Path $SkillOut "examples/en")
Copy-Item -Recurse "examples/es" (Join-Path $SkillOut "examples/es")

$SkillZip = Join-Path $DistDir "$SkillDirName-$Version.zip"
if (Test-Path $SkillZip) { Remove-Item -Force $SkillZip }
Compress-Archive -Path $SkillOut -DestinationPath $SkillZip -Force

# ---------------------------------------------------------------------------
# 5. Assemble the five ChatGPT knowledge files.
# ---------------------------------------------------------------------------

# 01-instructions.md: SKILL.md body without the YAML frontmatter, prefixed by
# one explanatory line.
$skillLines = (Read-Utf8Text "SKILL.md") -split "`r`n|`n"
$delimiterCount = 0
$bodyLines = New-Object System.Collections.Generic.List[string]
foreach ($line in $skillLines) {
    if ($line -match '^---\s*$') {
        $delimiterCount++
        continue
    }
    if ($delimiterCount -ge 2) {
        $bodyLines.Add($line)
    }
}
# Strip leading blank lines so the prefix line isn't followed by a blank gap.
while ($bodyLines.Count -gt 0 -and $bodyLines[0].Trim() -eq '') {
    $bodyLines.RemoveAt(0)
}

$prefixLine = "Instructions for the unslop-skill editorial rewrite skill. Files 02 to 05 are the rule and example sets; read the matching language and domain file before rewriting."
$instructionsPath = Join-Path $ChatgptDir "01-instructions.md"
Write-Utf8NoBom -Path $instructionsPath -Content (($prefixLine, "", ($bodyLines -join "`n")) -join "`n")

if ((Read-Utf8Text $instructionsPath) -match '(?m)^---\s*$') {
    Fail "01-instructions.md still contains a --- frontmatter delimiter; check SKILL.md's frontmatter format"
}

# concat_domain_files: concatenates the domain files in a language dir in the
# fixed editorial order (grammar, technical, ux_dashboard, seo, formal_docs),
# then appends any other *.md files found alphabetically, each preceded by a
# "<!-- file: <path> -->" marker line.
function Concat-DomainFiles {
    param(
        [string]$LangDir,
        [string]$OutFile
    )
    $sb = New-Object System.Text.StringBuilder
    $seen = @{}
    foreach ($domain in $RuleDomains) {
        $f = Join-Path $LangDir "$domain.md"
        if (Test-Path $f) {
            [void]$sb.Append("<!-- file: $LangDir/$domain.md -->`n`n")
            [void]$sb.Append((Read-Utf8Text $f))
            [void]$sb.Append("`n`n")
            $seen["$domain.md"] = $true
        }
    }
    $others = Get-ChildItem -Path $LangDir -Filter "*.md" | Sort-Object Name
    foreach ($item in $others) {
        if ($seen.ContainsKey($item.Name)) { continue }
        [void]$sb.Append("<!-- file: $LangDir/$($item.Name) -->`n`n")
        [void]$sb.Append((Read-Utf8Text $item.FullName))
        [void]$sb.Append("`n`n")
    }
    Write-Utf8NoBom -Path $OutFile -Content $sb.ToString()
}

Concat-DomainFiles -LangDir "rules/en" -OutFile (Join-Path $ChatgptDir "02-rules-en.md")
Concat-DomainFiles -LangDir "rules/es" -OutFile (Join-Path $ChatgptDir "03-rules-es.md")
Concat-DomainFiles -LangDir "examples/en" -OutFile (Join-Path $ChatgptDir "04-examples-en.md")
Concat-DomainFiles -LangDir "examples/es" -OutFile (Join-Path $ChatgptDir "05-examples-es.md")

$ChatgptFiles = @(
    "01-instructions.md", "02-rules-en.md", "03-rules-es.md",
    "04-examples-en.md", "05-examples-es.md"
) | ForEach-Object { Join-Path $ChatgptDir $_ }

$ChatgptZip = Join-Path $DistDir "$SkillDirName-chatgpt-$Version.zip"
if (Test-Path $ChatgptZip) { Remove-Item -Force $ChatgptZip }
Compress-Archive -Path $ChatgptFiles -DestinationPath $ChatgptZip -Force

# ---------------------------------------------------------------------------
# 6. Summary.
# ---------------------------------------------------------------------------
Write-Host ""
Write-Host "==> Build complete. Artifacts:"
$allArtifacts = @($SkillZip, $ChatgptZip) + $ChatgptFiles
foreach ($f in $allArtifacts) {
    $size = (Get-Item $f).Length
    Write-Host "    $f ($size bytes)"
}
