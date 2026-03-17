#!/usr/bin/env bash
# competitor-search.sh — Stage 4 Competitor Analysis helper
# Usage: ./scripts/competitor-search.sh <keyword> [limit]
# Example: ./scripts/competitor-search.sh "github automation" 10

set -euo pipefail

KEYWORD="${1:-}"
LIMIT="${2:-10}"

if [ -z "$KEYWORD" ]; then
  echo "Usage: $0 <keyword> [limit]"
  echo "Example: $0 'github automation' 10"
  exit 1
fi

echo "================================================"
echo " Stage 4: Competitor Analysis"
echo " Keyword: $KEYWORD | Limit: $LIMIT"
echo "================================================"
echo ""

# Search top repos by stars
echo "[ Top Repos by Stars ]"
gh search repos "$KEYWORD" --sort stars --limit "$LIMIT" \
  --json fullName,stargazerCount,description,language,updatedAt \
  --jq '.[] | "\(.stargazerCount) ⭐  \(.fullName)  [\(.language // "N/A")]  \(.description // "No description")"' \
  2>/dev/null || {
  echo "Note: gh search requires GitHub CLI >= 2.40"
  echo "Falling back to basic search..."
  gh search repos "$KEYWORD" --sort stars --limit "$LIMIT"
}

echo ""
echo "[ Quick Structure Comparison ]"
echo "To inspect a competitor's structure, run:"
echo "  gh repo clone <owner>/<repo> /tmp/competitor-ref --depth 1"
echo "  find /tmp/competitor-ref -maxdepth 3 -not -path '*/.git/*' | sort"
echo ""
echo "[ Evaluation Checklist ]"
echo "For each competitor, check:"
echo "  □ Directory structure (logical grouping?)"
echo "  □ CI/CD setup (GitHub Actions?)"
echo "  □ Documentation quality (README, CHANGELOG?)"
echo "  □ Test coverage (tests/ directory?)"
echo "  □ .gitignore completeness"
echo "  □ Security practices (no hardcoded secrets?)"
echo "  □ Versioning (semantic versioning, releases?)"
