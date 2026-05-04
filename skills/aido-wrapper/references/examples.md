# AIDO Usage Examples

## Login Module Example Prompt

`aido-brainstorm: create login module with email/password, input validation, invalid credential error, session handling, redirect after success, and tests.`

## Example End-to-End Flow

1. `aido-init`
2. `aido-brainstorm: create login module with email/password, input validation, invalid credential error, session handling, redirect after success, and tests.`
3. `aido-plan-with-file: module login`
4. `aido-breakdown`
5. `aido-execute-next`
6. `aido-execute-next` (repeat until no pending phase)
7. `aido-document`
8. `aido-archive`
9. `aido-clean`
10. `aido-status`
11. `aido-resume`

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
