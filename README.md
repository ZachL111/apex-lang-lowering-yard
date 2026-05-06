# apex-lang-lowering-yard

`apex-lang-lowering-yard` explores compilers in Julia. The repository keeps the core rule set compact, then surrounds it with examples that show how the decisions move.

## Apex Lang Lowering Yard Notes

The quickest review path is the verifier first, then the fixtures, then the operations note. That order makes it easy to see whether the code, data, and explanation still agree.

## Why This Exists

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Feature Notes

- Models source form with deterministic scoring and explicit review decisions.
- Uses fixture data to keep intermediate state changes visible in code review.
- Includes extended examples for bytecode output, including `recovery` and `degraded`.
- Documents evaluation checks tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Implementation Notes

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps source form, intermediate state, and bytecode output in one explicit decision path. The threshold is 152, with risk penalty 7, latency penalty 2, and weight bonus 6. The Julia project keeps the model in a small module with assertions in a local test script.

## Code Tour

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Local Setup

The only required setup is the local Julia toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

## Try It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Tests

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Example Scenarios

`examples/extended_cases.csv` adds six named cases. I kept the names plain so failures are easy to read in a terminal: baseline, pressure, surge, degraded, recovery, and boundary.

## Boundaries

The fixture set is deliberately small. That keeps the review surface clear, but it also means the model should not be treated as a complete domain simulator.

## Roadmap

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more compilers fixture that focuses on a malformed or borderline input.
