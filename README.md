# apex-lang-lowering-yard

`apex-lang-lowering-yard` keeps a focused Julia implementation around compilers. The project goal is to create a Julia reference implementation for lowering workflows, centered on incremental indexing, append-only fixtures, and checkpoint recovery checks.

## Why This Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Apex Lang Lowering Yard Review Notes

Start with `IR pressure` and `stack depth`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/apex-lang-lowering-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `IR pressure` and `stack depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Julia code keeps the review rule close to the tests.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The same command runs the local verification path. The highest-scoring domain case is `stale` at 207, which lands in `ship`. The most cautious case is `edge` at 125, which lands in `watch`.

## Roadmap

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
