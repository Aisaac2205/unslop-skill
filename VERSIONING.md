# Versioning

This project follows [Semantic Versioning](https://semver.org/) (`MAJOR.MINOR.PATCH`).

## Source of truth

The single source of truth for the project version is `.claude-plugin/plugin.json`, field `version`.

`SKILL.md` must always match it: the `metadata.version` field in its YAML frontmatter is kept in sync with `plugin.json`. The distribution scripts (`scripts/build-dist.sh`, `scripts/build-dist.ps1`) read the version from `plugin.json` only.

## Release procedure

1. Update `CHANGELOG.md`: move the relevant `[Unreleased]` entries under a new `## [X.Y.Z] - YYYY-MM-DD` section.
2. Bump the version in both `.claude-plugin/plugin.json` and `SKILL.md` (`metadata.version`).
3. Commit: `chore(release): vX.Y.Z`.
4. Tag: `git tag vX.Y.Z`.
5. Push: `git push --tags`.

Pushing the tag triggers `.github/workflows/release.yml`, which builds the distribution artifacts and attaches them to the GitHub release:

- `unslop-skill-X.Y.Z.zip`: for Claude Desktop, claude.ai, and the Claude API. Its top-level folder inside the archive is `unslop-skill/`.
- `unslop-skill-chatgpt-X.Y.Z.zip`, plus the five loose `01-instructions.md` through `05-examples-es.md` files: for ChatGPT Custom GPTs and Projects.

The same workflow also runs the build script, with no release step, on every pull request and on every push to `main`, as a smoke test that the packaging still works.
