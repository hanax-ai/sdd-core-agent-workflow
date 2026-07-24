# sdd-core-agent-workflow

Coordination control plane and future implementation home for the SDD-Core
three-agent workflow harness.

**Status:** Non-authoritative scaffolding. The governing master charter
(`SDD-3A-MASTER`, candidate v0.1.0) is PROPOSED and unaccepted; an Agent Zero
revision request is pending to route harness implementation to this repository.
Nothing in this repository grants or implies Gate 1, Gate 2, publication, or
merge authority.

## Purpose

1. **Interim coordination control plane** (SDD-3A-MASTER §7, operative only
   once the master is accepted):
   - `ledgers/` — one append-only ledger per work order (Appendix A, schema 0.2)
   - `work-orders/` — work-order records (§7.1 minimum contract)
   - `decisions/` — Agent Zero decision queue and decision events (Appendix C)
   - `roster.md` — agent identity roster
2. **Future home of harness implementation code** — only after an explicit
   Agent Zero Gate 2 directive naming the approved specification or plan.
   Governance artifacts (spec, plan, tasks, records) remain in
   `sdd-core/projects/governance-ops/`.

## Governance

Authority order (see `AGENTS.md`): sdd-core root constitution → root registry →
project constitutions → approved feature artifacts → accepted master charter →
work orders → this repository's files.

Machine-local repository. **No public remote until Agent Zero publication
approval** (SDD-3A-MASTER §7.3 requires the coordination ledger to be
machine-local or an Agent Zero-approved system; a public repository is not the
default).
