# 🐙 OpenClaw GitHub Repo Commander

> **Ultimate GitHub repository management skill** — powered by the 7-Stage Super Workflow.

[![OpenClaw Skill](https://img.shields.io/badge/OpenClaw-Skill-orange?logo=github)](https://github.com/wd041216-bit/openclaw-github-repo-commander)
[![Version](https://img.shields.io/badge/version-2.1.0-blue)](SKILL.md)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

---

## 🚀 What It Does

This skill transforms your AI agent into a **senior open-source maintainer and GitHub architect**. Instead of running simple `git` commands, it applies the **7-Stage Super Workflow** to ensure every repository operation is:

- 🔍 **Deeply analyzed** — not just executed
- 🏆 **Competitor-benchmarked** — compared against top-starred similar projects
- 🔒 **Security-reviewed** — checks for vulnerabilities before committing
- 📝 **Documentation-complete** — ensures README and docs are always updated

---

## 📦 Installation

### Via ClawHub

```bash
clawhub install openclaw-github-repo-commander
```

### Manual

```bash
# Clone into your OpenClaw skills directory
git clone https://github.com/wd041216-bit/openclaw-github-repo-commander.git \
  ~/.openclaw/skills/openclaw-github-repo-commander
```

### Requirements

- [GitHub CLI (`gh`)](https://cli.github.com/) — must be installed and authenticated
- `git` — standard git installation

```bash
# Authenticate GitHub CLI
gh auth login
```

---

## 🎯 Trigger Phrases

The skill activates when you say things like:

| Phrase | What Happens |
|--------|-------------|
| "管理我的 GitHub 仓库" | Full 7-stage repo audit |
| "重构这个仓库" | Deep refactor with competitor analysis |
| "深度审查这个 PR" | Security + quality PR review |
| "创建一个新项目" | Creates repo + benchmarks against competitors |
| "用超级工作流优化我的代码" | Full 7-stage optimization cycle |

---

## 🔄 The 7-Stage Super Workflow

```
1. Intake       → Parse request, define success criteria
2. Execution    → Run gh CLI commands, write/modify code
3. Reflection ⭐ → Deep pain-point analysis (security, scalability, docs)
4. Competitor ⭐ → Search & analyze top-starred similar repos
5. Synthesis    → Combine findings into actionable improvements
6. Iteration    → Apply improvements, confirm large changes with user
7. Validation   → Push, verify CI/CD, present final GitHub link
```

> ⭐ Stages 3 and 4 are what make this skill different from a simple `git` wrapper.

---

## 💡 Example Usage

```
User: "帮我分析并优化 wd041216-bit/openclaw-ultimate-suite 这个仓库"

Agent:
  Stage 1: Clones repo, identifies 44 skills, 3.8MB node_modules committed
  Stage 2: Runs git log, finds duplicate skills, hardcoded secrets
  Stage 3: Identifies security issues (APP_SECRET in code), empty dirs, duplicate files
  Stage 4: Searches "openclaw skills" on GitHub, finds top-3 competitors
  Stage 5: Recommends: remove duplicates, add .gitignore, fix secrets
  Stage 6: Executes cleanup, commits with detailed message
  Stage 7: Pushes, shows diff stats: -62,072 lines removed
```

---

## 🛡️ Security & Privacy

| Item | Details |
|------|---------|
| External Endpoints | `api.github.com` only (via `gh` CLI) |
| Data Leaving Machine | Only git commit content and PR descriptions |
| Credentials | Managed via `gh auth`, never hardcoded |

---

## 📋 Quick Commands Reference

```bash
gh repo view <owner>/<repo>              # View repo info
gh repo clone <owner>/<repo>            # Clone repo
gh repo create <name> --private         # Create private repo
gh search repos <keyword> --sort stars  # Find competitors
gh pr create --title "..." --body "..." # Create PR
gh pr list                              # List open PRs
gh run list --limit 5                   # Check CI status
gh issue list                           # List issues
```

---

## 📁 Repository Structure

```
openclaw-github-repo-commander/
├── SKILL.md          # OpenClaw skill definition (AgentSkills compatible)
├── _meta.json        # ClawHub metadata
├── README.md         # This file
└── LICENSE           # MIT License
```

---

## 🔗 Related Skills

- [openclaw-ultimate-suite](https://github.com/wd041216-bit/openclaw-ultimate-suite) — Full skill collection including this one
- [super-workflow](https://github.com/wd041216-bit/openclaw-ultimate-suite) — The 7-stage workflow methodology

---

## 📄 License

MIT License — see [LICENSE](LICENSE) for details.

---

*Made with 🦞 by [wd041216-bit](https://github.com/wd041216-bit)*
