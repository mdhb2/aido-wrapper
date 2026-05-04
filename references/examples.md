# AIDO Usage Examples

## Login Module Example Prompt

`/aido-brainstorm create login module with email/password, input validation, invalid credential error, session handling, redirect after success, and tests.`

## Example End-to-End Flow

1. `/aido-init`
2. `/aido-brainstorm create login module with email/password, input validation, invalid credential error, session handling, redirect after success, and tests.`
3. `/aido-grill login module`
4. `/aido-plan-with-file module login`
5. `/aido-breakdown`
6. `/aido-execute-next`
7. `/aido-execute-next` (repeat until no pending phase)
8. `/aido-document`
9. `/aido-archive`
10. `/aido-clean`
11. `/aido-status`
12. `/aido-resume`

`/aido-brainstorm`, `/aido-grill`, `/aido-breakdown`, `/aido-execute-next`, `/aido-document`, `/aido-archive`, and `/aido-clean` all auto-refine the relevant files in `.aido/`.

## Example Breakdown Shape

```md
P1 - Request validation
- goal: validate email/password payload
- likely files: app/Http/Requests/LoginRequest.php, tests/Feature/Auth/LoginTest.php
- tests: invalid email, missing password
- done criteria: validation errors match API contract
- status: PENDING

P2 - Authentication logic
- goal: authenticate valid credentials and reject invalid ones
- likely files: app/Actions/Auth/LoginAction.php, tests/Feature/Auth/LoginTest.php
- tests: success login, invalid credentials
- done criteria: session established on success, error returned on failure
- status: PENDING
```
