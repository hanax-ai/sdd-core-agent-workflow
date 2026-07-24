# Changelog

Format: [Keep a Changelog](https://keepachangelog.com/), date-headed entries,
newest first. This repository does not tag releases; `main` is the only
supported line.

## 2026-07-23

### Added

- Initial coordination scaffolding: `README.md`, `AGENTS.md` harness
  adapter, `roster.md`, and empty `ledgers/`, `work-orders/`, `decisions/`
  control-plane directories (non-authoritative pending SDD-3A-MASTER
  acceptance).
- OSS corpus: `LICENSE` (Apache-2.0), `SECURITY.md` (repo-specific threat
  model), `CONTRIBUTING.md`, this changelog.
- `verify-layout.sh` structural verifier with REQUIRED_PATHS and content
  invariants.
- CI: `required` Linux job and `windows-advisory` job running the verifier;
  SHA-pinned actions, least-privilege permissions.
- `.github/dependabot.yml` (github-actions ecosystem, monthly, grouped).
- Governance templates: pull-request checklist, defect-report and idea
  issue templates, documented branch-protection ruleset.
- Publication to `hanax-ai/sdd-core-agent-workflow` (public) under Agent
  Zero publication authorization, 2026-07-23.
