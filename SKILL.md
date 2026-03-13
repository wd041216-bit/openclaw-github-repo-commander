---
name: github-repo-commander
homepage: https://github.com/wd041216-bit/openclaw-github-repo-commander
description: Orchestrate GitHub repository cleanup, privacy checks, README packaging, discoverability upgrades, model-agnostic refactors, and awesome-list PR prep by combining repo governance with presentation polish.
---

# GitHub Repo Commander

Use this skill when a GitHub repository needs more than README polish.

This is the orchestration layer above:

- `github-repo-polish`
- `readme-generator`
- `ai-discoverability-audit`

It adds the missing governance layer:

- privacy and open-source readiness checks
- local path / token leak scanning
- skill metadata compliance checks
- model-agnostic refactor guidance
- awesome-list / curated-list contribution prep

## What this skill is for

Use it when the user wants to:

- audit a repo before open-sourcing
- make a repo cleaner and more presentable on GitHub
- merge improvements from another fork or branch without losing structure
- remove model-specific assumptions from prompts or scripts
- prepare a repo or skill for submission to an awesome-list
- upgrade an existing GitHub workflow skill into something more complete

## Commanding workflow

1. Inspect the repo with `gh` when the remote exists.
2. Run the privacy/compliance audit script.
3. Fix critical open-source blockers first:
   - tokens
   - `.env`
   - local machine paths
   - accidental personal data
4. Then improve packaging:
   - repo description
   - README first screen
   - screenshots / demo / topics
5. If the repo is skill-like, verify:
   - `SKILL.md` frontmatter
   - `skill.json`
   - `_meta.json` when required by the target ecosystem
6. If the repo is too model-specific, refactor toward model-agnostic behavior:
   - generic instructions
   - explicit capability assumptions
   - graceful degradation for smaller or local models
7. If the target is an awesome-list:
   - normalize repository URL
   - verify alphabetical placement
   - update counters or section summaries if needed

## Built-in audit script

Run:

```bash
python3 ./scripts/repo_commander_audit.py /path/to/repo
```

Useful flags:

```bash
python3 ./scripts/repo_commander_audit.py /path/to/repo --json
python3 ./scripts/repo_commander_audit.py /path/to/repo --strict
```

The script checks for:

- `.env`, secrets, token-like strings
- leaked local paths with personal usernames or machine-specific home directories
- missing skill metadata files
- obviously model-specific wording
- README presence and basic packaging issues

## How to combine it

Use together with:

- `github` for live repo inspection and metadata updates
- `github-repo-polish` for presentation and README quality
- `readme-generator` when the README needs a serious rewrite
- `ai-discoverability-audit` when visibility and recommendation presence matter
- `frontend-design` and `ui-ux-pro-max` when a repo needs stronger visual taste

## Commander rules

- Fix safety and privacy problems before beautifying the repo
- Keep open-source repos free of local deployment details
- Prefer human-readable GitHub positioning over keyword stuffing
- Keep PR fixes focused and easy to review
- Treat model-agnostic design as compatibility work, not branding language

## Output expectations

When you use this skill well, the result should usually include:

- critical findings first
- a proposed remediation plan
- concrete repo polish changes
- any metadata / README / topic updates
- if relevant, a PR-ready awesome-list entry or ordering note
