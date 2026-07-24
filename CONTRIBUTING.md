# Contributing

This repository is part of the Hana-X SDD-Core program and operates under its
governance. Read before contributing:

1. **Governance order** — see `AGENTS.md`: sdd-core root constitution →
   registries → accepted SDD-3A-MASTER charter → the assigned work order →
   this repository's files. Nothing here overrides that chain.
2. **Approval model** — merge, review approval, CI green, and praise are
   never authorization. Gate 1/Gate 2 and publication/merge approvals are
   issued only by Agent Zero (the directing authority), item- and
   action-specific.
3. **Spec-first** — implementation code lands only after the governing
   specification and plan are accepted and an explicit Gate 2 directive
   names them (sdd-core Article V; SDD-3A-MASTER §3.3).
4. **Scope discipline** — write only within your assigned work-order scope.
   One writer per work order. Never edit another contributor's records.
5. **No secrets** — public repository. No credentials, hostnames, tenant
   identifiers, or personal data anywhere, including fixtures and tests.
6. **Change discipline** — one coherent commit per change-set; structural
   additions update `verify-layout.sh` REQUIRED_PATHS and the README layout
   tree in the same change; `bash verify-layout.sh` must pass before commit.
7. **Identities** — agent contributors use registered identities from
   `roster.md` (`claude-<role>-<suffix>` convention).

Practical flow for external contributors: open an issue (defect report or
idea) first; substantive proposals route through the sdd-core governance
workspace, not directly into this repository.

Contributions are licensed under Apache-2.0 (see `LICENSE`, Section 5).
