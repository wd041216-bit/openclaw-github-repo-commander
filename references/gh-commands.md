# GitHub CLI (gh) Complete Command Reference

Quick reference for all `gh` commands used in the Super Workflow. Load this file when you need a specific command syntax.

## Table of Contents

- [Authentication](#authentication)
- [Repository Operations](#repository-operations)
- [Pull Requests](#pull-requests)
- [Issues](#issues)
- [Actions and CI/CD](#actions-and-cicd)
- [Releases](#releases)
- [Search](#search)
- [API and Advanced](#api-and-advanced)
- [Git Integration](#git-integration)

---

## Authentication

```bash
gh auth login                          # Interactive login (web or token)
gh auth login --with-token             # Login with token from stdin
gh auth logout                         # Log out
gh auth status                         # Check current auth status
gh auth token                          # Print current token
gh auth refresh                        # Refresh stored credentials
```

---

## Repository Operations

### Viewing and Cloning

```bash
gh repo view                           # View current repo
gh repo view <owner>/<repo>            # View specific repo
gh repo view <owner>/<repo> --web      # Open in browser
gh repo view <owner>/<repo> --json name,description,stargazerCount,language,updatedAt,isPrivate

gh repo clone <owner>/<repo>           # Clone repo
gh repo clone <owner>/<repo> <dir>     # Clone into specific directory
gh repo clone <owner>/<repo> --depth 1 # Shallow clone (faster)
```

### Creating and Managing

```bash
gh repo create <name>                  # Create new repo (interactive)
gh repo create <name> --private        # Create private repo
gh repo create <name> --public         # Create public repo
gh repo create <name> --description "desc" --private

gh repo fork <owner>/<repo>            # Fork a repo
gh repo fork <owner>/<repo> --clone    # Fork and clone immediately

gh repo delete <owner>/<repo>          # Delete repo (requires confirmation)
gh repo rename <new-name>              # Rename current repo
gh repo edit --description "new desc"  # Edit repo metadata
gh repo edit --visibility private      # Change visibility
```

### Repository Info

```bash
gh repo list                           # List your repos
gh repo list <org>                     # List org repos
gh repo list --limit 50                # List with higher limit
gh repo list --language python         # Filter by language
gh repo list --fork                    # List only forks
gh repo list --source                  # List only non-forks
```

---

## Pull Requests

### Creating PRs

```bash
gh pr create                           # Interactive PR creation
gh pr create --title "feat: ..." --body "..."
gh pr create --title "..." --body "..." --base main --head feature-branch
gh pr create --draft                   # Create as draft
gh pr create --reviewer user1,user2    # Request reviewers
gh pr create --label "bug,enhancement" # Add labels
gh pr create --assignee "@me"          # Assign to yourself
gh pr create --fill                    # Auto-fill from commits
```

### Viewing PRs

```bash
gh pr list                             # List open PRs
gh pr list --state closed              # List closed PRs
gh pr list --state all                 # List all PRs
gh pr list --author "@me"              # PRs by you
gh pr list --assignee "@me"            # PRs assigned to you
gh pr list --label "bug"               # PRs with label
gh pr view <number>                    # View PR details
gh pr view <number> --web              # Open PR in browser
gh pr view <number> --json number,title,state,body,reviews
```

### Reviewing PRs

```bash
gh pr review <number>                  # Interactive review
gh pr review <number> --approve        # Approve PR
gh pr review <number> --request-changes --body "Please fix X"
gh pr review <number> --comment --body "Looks good, minor nit: ..."
gh pr diff <number>                    # View PR diff
gh pr checks <number>                  # View CI check status
```

### Merging and Closing

```bash
gh pr merge <number>                   # Interactive merge
gh pr merge <number> --merge           # Create merge commit
gh pr merge <number> --squash          # Squash and merge
gh pr merge <number> --rebase          # Rebase and merge
gh pr merge <number> --delete-branch   # Delete branch after merge
gh pr merge <number> --auto            # Enable auto-merge
gh pr close <number>                   # Close PR without merging
gh pr reopen <number>                  # Reopen closed PR
```

### Checking Out PRs

```bash
gh pr checkout <number>                # Check out PR branch locally
gh pr status                           # Show status of PRs involving you
```

---

## Issues

```bash
gh issue list                          # List open issues
gh issue list --state closed           # List closed issues
gh issue list --assignee "@me"         # Issues assigned to you
gh issue list --label "bug"            # Issues with label
gh issue list --milestone "v2.0"       # Issues in milestone

gh issue view <number>                 # View issue details
gh issue view <number> --web           # Open in browser

gh issue create                        # Interactive issue creation
gh issue create --title "Bug: ..." --body "Steps to reproduce..."
gh issue create --label "bug" --assignee "@me"

gh issue close <number>                # Close issue
gh issue close <number> --comment "Fixed in PR #42"
gh issue reopen <number>               # Reopen issue
gh issue edit <number> --title "New title"
gh issue comment <number> --body "..."  # Add comment
gh issue pin <number>                  # Pin issue
gh issue unpin <number>                # Unpin issue
```

---

## Actions and CI/CD

### Workflow Runs

```bash
gh run list                            # List recent runs
gh run list --limit 10                 # List last 10 runs
gh run list --workflow <name.yml>      # Filter by workflow file
gh run list --branch main              # Filter by branch
gh run list --status failure           # Show only failed runs

gh run view <run-id>                   # View run details
gh run view <run-id> --log             # View run logs
gh run view <run-id> --log-failed      # View only failed step logs
gh run view <run-id> --web             # Open in browser

gh run watch <run-id>                  # Watch run in real-time
gh run cancel <run-id>                 # Cancel a running workflow
gh run rerun <run-id>                  # Re-run a workflow
gh run rerun <run-id> --failed         # Re-run only failed jobs
gh run download <run-id>               # Download run artifacts
```

### Workflow Management

```bash
gh workflow list                       # List all workflows
gh workflow view <name>                # View workflow details
gh workflow enable <name>              # Enable a workflow
gh workflow disable <name>             # Disable a workflow
gh workflow run <name.yml>             # Manually trigger workflow
gh workflow run <name.yml> --field key=value  # With input parameters
```

---

## Releases

```bash
gh release list                        # List all releases
gh release view <tag>                  # View release details
gh release view <tag> --web            # Open in browser

gh release create <tag>                # Interactive release creation
gh release create v1.0.0 --title "v1.0.0" --notes "Release notes"
gh release create v1.0.0 --generate-notes  # Auto-generate notes from PRs
gh release create v1.0.0 --draft       # Create as draft
gh release create v1.0.0 --prerelease  # Mark as pre-release
gh release create v1.0.0 ./dist/*.tar.gz  # Attach assets

gh release edit <tag> --title "New title"
gh release delete <tag>                # Delete release
gh release download <tag>              # Download release assets
gh release upload <tag> ./file.zip     # Upload asset to release
```

---

## Search

```bash
# Repository search
gh search repos <query>                # Basic search
gh search repos <query> --sort stars   # Sort by stars
gh search repos <query> --sort updated # Sort by update date
gh search repos <query> --limit 20     # More results
gh search repos <query> --language python  # Filter by language
gh search repos <query> --topic cli    # Filter by topic
gh search repos <query> --owner <user> # Filter by owner

# Code search
gh search code <query>                 # Search code
gh search code <query> --repo <owner>/<repo>  # In specific repo
gh search code <query> --language python

# Issue and PR search
gh search issues <query>               # Search issues
gh search prs <query>                  # Search PRs
gh search commits <query>              # Search commits
```

---

## API and Advanced

```bash
# Direct API calls
gh api /repos/<owner>/<repo>           # GET request
gh api /repos/<owner>/<repo>/issues --method POST --field title="Bug"
gh api graphql -f query='{ viewer { login } }'

# Rate limit
gh api rate_limit                      # Check rate limit status

# Gists
gh gist list                           # List your gists
gh gist create <file>                  # Create gist from file
gh gist view <id>                      # View gist
gh gist clone <id>                     # Clone gist

# SSH keys
gh ssh-key list                        # List SSH keys
gh ssh-key add <key-file>              # Add SSH key

# GPG keys
gh gpg-key list                        # List GPG keys
gh gpg-key add <key-file>              # Add GPG key
```

---

## Git Integration

```bash
# These git commands work well alongside gh
git clone https://github.com/<owner>/<repo>.git
git remote -v                          # View remotes
git remote add upstream https://github.com/<original>/<repo>.git

# Sync fork with upstream
git fetch upstream
git checkout main
git merge upstream/main
git push origin main

# Common workflow
git checkout -b feat/new-feature
git add -p                             # Stage interactively
git commit -m "feat: add new feature"
git push origin feat/new-feature
gh pr create --fill                    # Create PR from current branch
```

---

## Useful Aliases

Add to your shell profile for faster access:

```bash
alias ghv='gh repo view --web'
alias ghpr='gh pr create --fill'
alias ghprl='gh pr list'
alias ghrl='gh run list --limit 5'
alias ghrw='gh run watch'
```
