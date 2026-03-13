# GitHub Repo Commander

Upgrade a repository from “looks fine” to “safe, polished, and ready to share.”

中文说明：主要技能定义见 [SKILL.md](./SKILL.md)。

`github-repo-commander` is an orchestration skill for GitHub-focused maintenance work. It combines presentation polish with governance checks so a repo can be:

- safer to open-source
- easier to understand at a glance
- less tied to one specific LLM stack
- easier to submit to curated lists or community directories

## What it adds beyond README polish

- privacy and secret scanning
- local path leak detection
- skill metadata compliance checks
- model-agnostic refactor guidance
- awesome-list contribution prep
- packaging workflow orchestration

## Works well with

- `github-repo-polish`
- `readme-generator`
- `ai-discoverability-audit`

## Files

- [SKILL.md](./SKILL.md): main skill instructions
- [skill.json](./skill.json): Manus-style metadata
- [scripts/repo_commander_audit.py](./scripts/repo_commander_audit.py): repo audit helper
- [agents/openai.yaml](./agents/openai.yaml): skill card metadata
- [_meta.json](./_meta.json): lightweight skill package metadata

## Audit example

```bash
python3 ./scripts/repo_commander_audit.py /path/to/repo
```

## License

MIT
