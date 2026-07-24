#!/usr/bin/env bash
# verify-layout.sh — structural verifier for sdd-core-agent-workflow.
# Advisory to humans, run by CI. NOT part of the SDD workflow itself.
# Discipline: any structural addition to this repo updates REQUIRED_PATHS
# and the README layout tree in the same change.
set -u

PASS=0
FAIL=0

REQUIRED_PATHS=(
  "README.md"
  "AGENTS.md"
  "roster.md"
  "LICENSE"
  "SECURITY.md"
  "CONTRIBUTING.md"
  "CHANGELOG.md"
  ".gitattributes"
  ".gitignore"
  "verify-layout.sh"
  "ledgers/README.md"
  "work-orders/README.md"
  "decisions/README.md"
  ".github/workflows/ci.yml"
  ".github/dependabot.yml"
  ".github/PULL_REQUEST_TEMPLATE.md"
  ".github/ISSUE_TEMPLATE/defect-report.md"
  ".github/ISSUE_TEMPLATE/idea.md"
  ".github/branch-protection-ruleset.md"
)

check_path() {
  if [ -e "$1" ]; then
    echo "[OK]      $1"
    PASS=$((PASS + 1))
  else
    echo "[MISSING] $1"
    FAIL=$((FAIL + 1))
  fi
}

check_content() {
  local file="$1" pattern="$2" label="$3"
  if [ -f "$file" ] && grep -q "$pattern" "$file"; then
    echo "[OK]      $label"
    PASS=$((PASS + 1))
  else
    echo "[MISSING] $label ($file: '$pattern')"
    FAIL=$((FAIL + 1))
  fi
}

echo "== Required paths =="
for p in "${REQUIRED_PATHS[@]}"; do
  check_path "$p"
done

echo
echo "== Content invariants =="
# Adapter subordination: AGENTS.md must declare itself beneath governance.
check_content "AGENTS.md" "holds no authority" "AGENTS.md subordination clause"
# Non-authoritative banner: README must not claim operative authority pre-acceptance.
check_content "README.md" "Non-authoritative" "README non-authoritative status"
# Roster carries the registered Claude identity.
check_content "roster.md" "claude-workflow-fable-1" "roster registered identity"
# Control-plane dirs must declare append-only / empty-until-authorized posture.
check_content "ledgers/README.md" "[Aa]ppend" "ledgers append-only policy"
check_content "work-orders/README.md" "minimum contract" "work-orders contract reference"
# Security posture: threat model must lead with absence of secrets.
check_content "SECURITY.md" "Absence of secrets" "SECURITY.md secrets-first asset"
# CI hardening invariants.
check_content ".github/workflows/ci.yml" "persist-credentials: false" "CI persist-credentials off"
check_content ".github/workflows/ci.yml" "contents: read" "CI least-privilege permissions"

echo
TOTAL=$((PASS + FAIL))
echo "== Summary: $PASS/$TOTAL checks passed, $FAIL failed =="
if [ "$FAIL" -gt 0 ]; then
  exit 1
fi
exit 0
