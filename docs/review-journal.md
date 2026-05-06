# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 137, lane `watch`
- `stress`: `lowering drift`, score 132, lane `watch`
- `edge`: `stack depth`, score 125, lane `watch`
- `recovery`: `diagnostic reach`, score 165, lane `ship`
- `stale`: `IR pressure`, score 207, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
