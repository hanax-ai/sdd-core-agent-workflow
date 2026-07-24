# Branch Protection Ruleset — main

Documented configuration for the `main-branch-protection` ruleset on
`hanax-ai/sdd-core-agent-workflow`. This file is the versioned record; the
GitHub ruleset is the enforcement. Keep both in sync — changes to either are
a reviewed change referencing the authorizing directive.

## Settings

| Control | Value |
|---|---|
| Target | `main` |
| Require pull request before merging | Yes |
| Required status checks | Exactly one context: the JOB NAME `required` (source: GitHub Actions) |
| Require branch up to date | Yes |
| Require conversation resolution | Yes |
| Block force pushes | Yes |
| Restrict deletions | Yes |
| Bypass list | Empty |

## Known trap (inherited from the dashboard's recorded defect)

Bind the required status check to the JOB NAME context `required` selected
from the observed-checks dropdown — NEVER the free-typed PR display string
(`ci / required`). Binding the display string produces a phantom
"Expected — waiting for status" check that blocks every merge permanently.
Corollary: the job name `required` must stay unique across all workflows in
this repository, because source "GitHub Actions" scopes to the integration,
not to one workflow.

## Advisory checks (deliberately NOT required)

- `windows-advisory` — identical verification on Windows; promotion to
  required is planned once stable, and is itself a recorded decision.
- Any network-dependent check (future dependency audit) stays out of the
  required set.

## Evidence

Record deny/allow control evidence here after the ruleset is active
(blocked-PR and allowed-PR references), as the dashboard's ruleset doc does.
