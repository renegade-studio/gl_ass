# Code Review Checklist Template

## Review Information
- **Pull Request**: [PR number/link]
- **Author**: [Code author]
- **Reviewer**: [Code reviewer]
- **Feature/Task**: [Related feature or task]
- **Review Date**: [Date of review]

## Google's Code Review Best Practices
This checklist is based on the best practices outlined in the Google SWE book.

### For the Author
- [ ] **Keep changes small and focused.** A change should address a single, specific issue.
- [ ] **Write a clear and descriptive change description.** The first line should be a summary of the change, and the body should provide more detail.
- [ ] **Be receptive to feedback.** Remember that you are not your code, and that the goal of code review is to improve the codebase for everyone.
- [ ] **Address all comments.** Every comment from a reviewer should be addressed, either by making the requested change or by explaining why you disagree.

### For the Reviewer
- [ ] **Be polite and professional.** All feedback should be constructive and respectful.
- [ ] **Be prompt.** Aim to provide feedback within 24 hours.
- [ ] **Defer to the author on style.** If a change is functionally correct and follows the style guide, don't ask for changes based on your personal preference.
- [ ] **Focus on the most important issues.** Don't get bogged down in minor details.
- [ ] **Automate where possible.** Use linters, formatters, and other tools to automate mechanical checks.

## Functional Review
### Requirements Compliance
- [ ] Implementation matches specification requirements
- [ ] All acceptance criteria are met
- [ ] Edge cases are properly handled
- [ ] Error scenarios are addressed

### Business Logic
- [ ] Business rules are correctly implemented
- [ ] Data transformations are accurate
- [ ] Workflow logic is sound
- [ ] User experience is intuitive

### API Design (if applicable)
- [ ] API contract is followed
- [ ] Request/response formats are correct
- [ ] HTTP status codes are appropriate
- [ ] Error messages are helpful

## Technical Review
### Code Quality
- [ ] Code is readable and well-organized
- [ ] Functions/methods are appropriately sized
- [ ] Variable and function names are descriptive
- [ ] Code follows DRY (Don't Repeat Yourself) principle
- [ ] Complex logic is properly commented

### Architecture and Design
- [ ] Code follows established patterns
- [ ] Separation of concerns is maintained
- [ ] Dependencies are minimal and appropriate
- [ ] Code is modular and reusable
- [ ] Design patterns are used correctly

### Performance
- [ ] No obvious performance bottlenecks
- [ ] Database queries are optimized
- [ ] Caching is used where appropriate
- [ ] Memory usage is reasonable
- [ ] Algorithm complexity is acceptable

### Security
- [ ] Input validation is comprehensive
- [ ] SQL injection prevention is in place
- [ ] XSS prevention is implemented
- [ ] Authentication/authorization is correct
- [ ] Sensitive data is properly handled
- [ ] No secrets in code

## Testing Review
### Test Coverage
- [ ] Unit tests cover new functionality
- [ ] Integration tests are present (if needed)
- [ ] Test coverage meets project requirements
- [ ] Edge cases are tested
- [ ] Error conditions are tested

### Test Quality
- [ ] Tests are readable and maintainable
- [ ] Test names are descriptive
- [ ] Tests are independent and repeatable
- [ ] Mock/stub usage is appropriate
- [ ] Test data setup is clean

## Documentation Review
### Code Documentation
- [ ] Complex functions have clear comments
- [ ] API endpoints are documented
- [ ] Configuration changes are documented
- [ ] Breaking changes are noted

### External Documentation
- [ ] README updated (if needed)
- [ ] API documentation updated
- [ ] Architecture docs updated (if needed)
- [ ] User documentation updated (if applicable)

## Deployment Review
### Configuration
- [ ] Environment variables are documented
- [ ] Database migrations are included (if needed)
- [ ] Configuration changes are noted
- [ ] Feature flags are properly configured

### Backwards Compatibility
- [ ] No breaking changes (or properly documented)
- [ ] Database migrations are backwards compatible
- [ ] API changes are backwards compatible
- [ ] Deployment strategy is safe

## Action Items
### Required Changes (Must Fix)
- [ ] [Critical issue 1]
- [ ] [Critical issue 2]

### Suggested Improvements (Should Fix)
- [ ] [Important improvement 1]
- [ ] [Important improvement 2]

### Optional Enhancements (Could Fix)
- [ ] [Nice-to-have improvement 1]
- [ ] [Nice-to-have improvement 2]

## Overall Assessment
### Code Quality Score
- **Functionality**: [1-5 rating]
- **Code Quality**: [1-5 rating]
- **Testing**: [1-5 rating]
- **Documentation**: [1-5 rating]
- **Overall**: [1-5 rating]

### Recommendation
- [ ] **Approve**: Ready to merge as-is
- [ ] **Approve with Minor Changes**: Address optional items in future
- [ ] **Request Changes**: Must address required changes before merge
- [ ] **Major Revision Needed**: Significant rework required

### Comments
[Additional reviewer comments and feedback]

---
*Use this checklist to ensure consistent, thorough code reviews*
