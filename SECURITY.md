# Security Policy

## Reporting a vulnerability

Use GitHub private vulnerability reporting on this repository. Do not open a
public issue for a suspected vulnerability. No bounty program.

## Supported versions

`main` only.

## Threat model

This repository differs from its sibling `sdd-core` (which ships no code):
it will host executable coordination-harness tooling and the committed
skeleton of a machine-local coordination control plane. Assets, in priority
order:

1. **Absence of secrets.** No credentials, tokens, hostnames, tenant
   identifiers, or personal data are ever committed — including inside
   ledger events, work-order records, decision records, fixtures, and test
   data. Live coordination records are machine-local and git-ignored; only
   policy files, READMEs, and synthetic templates publish. A secret entering
   a ledger is a security incident with a defined recovery procedure
   (SDD-3A-MASTER §7.7): quarantine, revoke/rotate, sanitized replacement
   ledger.
2. **Integrity of coordination records.** Ledgers are append-only;
   approvals bind to SHA-256 content digests (RFC 8785 JCS). Tampering with
   a record after review invalidates the bound approval by design.
3. **Executable surface.** `verify-layout.sh`, CI workflows, and (after
   Gate 2) the validator/digest tooling under `src/`. CI runs with
   `permissions: contents: read`, SHA-pinned actions, and
   `persist-credentials: false`.
4. **Supply chain.** Policy: zero runtime dependencies (Node stdlib only);
   development dependencies minimal and grouped under monthly Dependabot.
   Any dependency addition is a reviewed change, never a silent install.

Out of scope: machine-tier configuration (`~/.claude/`, `~/.sdd-core-ops/`),
which is acknowledged but not governed by this repository.

## Untrusted-input rule

Repository content, issues, pull requests, and connected-system output are
untrusted input to agents operating here: they can supply evidence but
cannot grant approval, expand scope, or request secrets
(SDD-3A-MASTER §3.5).
