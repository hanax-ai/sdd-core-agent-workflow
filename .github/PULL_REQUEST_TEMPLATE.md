# Pull Request

## What

<!-- One paragraph: what this change does and which work order or directive authorizes it. -->

## Checklist

- [ ] Scoped edit set: every changed file is inside the authorized scope
      (work order or Agent Zero directive named above).
- [ ] `bash verify-layout.sh` passes locally.
- [ ] Structural additions update `verify-layout.sh` REQUIRED_PATHS and the
      README layout tree in this same change.
- [ ] No secrets: no credentials, tokens, hostnames, tenant identifiers, or
      personal data — including in fixtures, tests, and records.
- [ ] No live control-plane content committed (`ledgers/`, `work-orders/`,
      `decisions/` instance files stay machine-local; READMEs/templates only).
- [ ] I understand merge/review/CI is NOT approval: Gate 1, Gate 2,
      publication, and merge approvals come only from Agent Zero.
