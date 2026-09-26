# Changelog

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2026-09-25

### Added

- English and Spanish rule mirrors (grammar, technical, ux_dashboard, seo, formal_docs), each with a Sources footer and "[Editorial policy]" labels for house-style rules.
- English and Spanish examples for each domain.
- Claude Code plugin manifests (`.claude-plugin/plugin.json`, `.claude-plugin/marketplace.json`).
- Bilingual README with install steps for Claude Code, Claude Desktop and claude.ai, Codex, Cursor, and ChatGPT.
- Distribution scripts and a release workflow.

### Changed

- Skill renamed from `humanizer` to `unslop-skill`.
- Rules corrected against RAE/DPD, APA 7, CMOS, and Google Search Central: voseo framed as register normalization rather than an error; "en base a" admitted; "a través de" admitted; APA 7 first person allowed; no word counts or keyword-density numbers in SEO guidance; FAQ rich results guidance withdrawn.

### Removed

- Flat `rules/*.md` and `examples/*_*.md` files, replaced by `en/` and `es/` folders.

[Unreleased]: https://github.com/Aisaac2205/unslop-skill/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/Aisaac2205/unslop-skill/releases/tag/v2.0.0
