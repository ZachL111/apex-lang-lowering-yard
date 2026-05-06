# Apex Lang Lowering Yard Walkthrough

I use this file as a small checklist before changing the Julia implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 137 | watch |
| stress | lowering drift | 132 | watch |
| edge | stack depth | 125 | watch |
| recovery | diagnostic reach | 165 | ship |
| stale | IR pressure | 207 | ship |

Start with `stale` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around lowering drift and diagnostic reach.
