# Engineering Instructions

## General

- Understand existing code before modifying it.
- Prefer existing patterns and abstractions.
- Keep changes focused.
- Avoid unnecessary dependencies.
- Do not rewrite working systems without justification.
- Preserve backward compatibility unless explicitly required otherwise.

## Architecture

Significant architectural decisions must be discussed before implementation.

Architecture decisions should be documented in:

docs/architecture/

## Implementation

Follow the approved implementation plan.

If implementation reveals a fundamental architectural problem, stop and report it.

## Verification

Before considering work complete:

- run tests
- run lint
- run typecheck when available
- inspect git diff
- verify requirements

## Code Quality

Prefer:
- simple solutions
- explicit behavior
- strong typing
- clear boundaries
- testable code

Avoid:
- unnecessary abstractions
- duplicated logic
- speculative features
- silent architectural changes
