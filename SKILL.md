---
name: openclaw-github-repo-commander
version: "2.1.0"
description: >
  Ultimate GitHub repository management skill powered by the 7-Stage Super Workflow.
  Use for: managing repositories, creating PRs, reviewing code, analyzing competitors,
  and performing deep structural optimizations on GitHub projects.
homepage: https://github.com/wd041216-bit/openclaw-github-repo-commander
metadata:
  clawdbot:
    emoji: "🐙"
    requires:
      bins: ["gh", "git"]
    files: []
---

# 🐙 GitHub Repo Commander (Super Workflow Edition)

> 将 AI Agent 变成资深开源维护者和 GitHub 架构师。整合 **7 阶段超级工作流**，确保每次代码变更、PR 审查或仓库重构都经过深度分析、竞品对比和高度优化。

## 触发场景

当用户提出以下需求时自动激活：

- "管理我的 GitHub 仓库"
- "重构这个仓库"
- "深度审查这个 PR"
- "创建一个比现有项目更好的新项目"
- "用超级工作流优化我的代码"
- "分析竞品仓库结构"

## 7 阶段超级工作流

处理复杂 GitHub 任务时，**必须**按以下顺序执行：

### 阶段 1：Intake（任务接收与分类）

- 解析用户的 GitHub 请求（克隆、Fork、审查、重构等）
- 使用 `gh repo view` 了解仓库当前状态、语言分布、Star 数
- 定义成功标准（如"代码必须通过 CI"、"文档必须更新"）

### 阶段 2：Execution（专项执行）

执行主要 GitHub 操作：

```bash
# 克隆仓库
gh repo clone <owner>/<repo>

# 创建 PR
gh pr create --title "feat: ..." --body "..."

# 审查 PR
gh pr review <id> --comment "..."
```

在本地编写或修改必要的代码/文件。

### 阶段 3：Reflection ⭐（深度痛点反思）

提交或推送前，批判性地审查变更：

- **代码可扩展性**：架构是否支持未来增长？
- **安全漏洞**：是否有硬编码凭证、注入风险？
- **文档清晰度**：新贡献者能否快速上手？
- **测试覆盖**：关键路径是否有测试？

> 不接受表面成功。如有 linter 或测试，必须运行。

### 阶段 4：Competitor Analysis ⭐（竞品对比研究）

构建新功能或仓库时：

```bash
# 搜索相似项目
gh search repos <keyword> --sort stars --limit 10
```

分析高 Star 竞品仓库：
- 代码结构如何组织？
- 使用哪些 CI/CD 工具？
- 文档是如何撰写的？
- 找到当前执行与业界最佳实践的"差距"

### 阶段 5：Synthesis（综合建议）

结合阶段 3（反思）和阶段 4（竞品分析）的发现，综合出可执行的改进方案：

- 示例："参考竞品 X 添加 GitHub Actions 工作流"
- 示例："重构模块 Y 以提升性能，参考竞品 Z 的实现"

### 阶段 6：Iteration（自动改进）

将综合建议应用到本地代码库：

```bash
# 提交优化后的代码
git commit -m "feat: super upgrade based on competitor analysis"
```

> 如变更范围较大，提交前须向用户确认。

### 阶段 7：Validation（验证与下一轮）

```bash
# 推送到 GitHub
git push origin main

# 或创建 PR
gh pr create --title "..." --body "..."

# 验证 CI/CD 状态
gh run list --limit 5
```

向用户展示最终 GitHub 链接，并总结驱动变更的深度反思和竞品洞察。

---

## 常用命令速查

| 操作 | 命令 |
|------|------|
| 查看仓库 | `gh repo view <owner>/<repo>` |
| 克隆仓库 | `gh repo clone <owner>/<repo>` |
| 创建仓库 | `gh repo create <name> --private` |
| 搜索仓库 | `gh search repos <keyword> --sort stars` |
| 创建 PR | `gh pr create --title "<title>" --body "<body>"` |
| 列出 Issues | `gh issue list` |
| 查看 CI 状态 | `gh run list --limit 5` |
| Fork 仓库 | `gh repo fork <owner>/<repo>` |
| 列出 PR | `gh pr list` |
| 合并 PR | `gh pr merge <id> --squash` |

## 安全与隐私

| 项目 | 说明 |
|------|------|
| 外部端点 | `api.github.com`（仅通过 `gh` CLI 调用） |
| 离开本机的数据 | 仅 git 提交内容和 PR 描述 |
| 不离开本机的数据 | 本地文件内容（除非明确 push） |
| 凭证处理 | 使用 `gh auth` 管理，不硬编码 Token |

> **信任声明**：本技能通过 GitHub CLI 与 `api.github.com` 交互。仅在您信任 GitHub 平台的前提下安装使用。

## 依赖要求

- `gh`（GitHub CLI）：[安装指南](https://cli.github.com/)
- `git`：系统自带或通过包管理器安装
- 已通过 `gh auth login` 完成认证
