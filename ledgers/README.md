# Ledgers

One append-only ledger file per work order: `LEDGER-WO-<ID>.yaml`, events per
SDD-3A-MASTER Appendix A (schema 0.2). Append only; corrections reference the
superseded entry. No secrets, private infrastructure details, or real
operational payloads. Empty until the master is accepted and a work order is
authorized.
