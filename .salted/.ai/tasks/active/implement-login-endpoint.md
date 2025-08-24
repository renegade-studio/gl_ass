# Task Specification: Implement Login Endpoint

## Task Identity
- **Task ID**: [TASK-001]
- **Task Title**: Implement Login Endpoint
- **Feature/Epic**: User Login
- **Assignee**: [If applicable]
- **Priority**: High
- **Estimated Effort**: 1 day

## Task Context
### Background
This task is part of the "User Login" feature. It involves creating the API endpoint that will handle user login requests.

### Related Work
- **Parent Feature**: `../specs/features/user-login.md`
- **Dependencies**: The authentication service must be implemented first.

## Task Description
### Objective
Create a `POST /api/v1/login` endpoint that authenticates a user and returns a JSON Web Token (JWT).

### Scope
**In Scope:**
- Create the login endpoint.
- Integrate with the authentication service.
- Return a JWT on successful authentication.
- Return an error message on failed authentication.

**Out of Scope:**
- Implementing the authentication service itself.
- Creating the login form in the UI.

### Technical Approach
The login endpoint will be implemented as a Gleam function that takes a request with the user's email and password, calls the authentication service to verify the credentials, and returns a response with a JWT or an error message.

## Implementation Details
### Files to Modify/Create
- `src/web/routes/api.gleam`: Add the login route.
- `src/web/controllers/auth_controller.gleam`: Create the login controller.

### Code Changes Required
1. **Add the login route:** Add a new route for `POST /api/v1/login` in the `src/web/routes/api.gleam` file.
2. **Create the login controller:** Create a new `login` function in the `src/web/controllers/auth_controller.gleam` file. This function will:
   - Parse the email and password from the request body.
   - Call the `auth_service.login` function to authenticate the user.
   - If the authentication is successful, generate a JWT and return it in the response.
   - If the authentication fails, return a 401 Unauthorized response with an error message.

## Technical Specifications
### API Contract
```yaml
# POST /api/v1/login
Request:
  Content-Type: application/json
  Body:
    email: string (required)
    password: string (required)
Response:
  200: OK
    Body:
      token: string (JWT)
  401: Unauthorized
    Body:
      error: string
```

## Quality Requirements
### Testing Requirements
- **Unit Tests**:
  - [ ] Test the login controller with a valid request.
  - [ ] Test the login controller with an invalid request (e.g., missing email or password).
  - [ ] Test the login controller with incorrect credentials.

## Acceptance Criteria
### Functional Criteria
- [ ] The `POST /api/v1/login` endpoint is created.
- [ ] The endpoint correctly authenticates users.
- [ ] The endpoint returns a JWT on successful authentication.
- [ ] The endpoint returns an error message on failed authentication.

### Technical Criteria
- [ ] The code follows the project's coding standards.
- [ ] The code is well-tested.

## Implementation Notes
### Design Decisions
- We will use the `gleam_jwt` library to generate and verify JWTs.

### Common Pitfalls to Avoid
- Do not store the user's password in the JWT.
- Do not log the user's password.
