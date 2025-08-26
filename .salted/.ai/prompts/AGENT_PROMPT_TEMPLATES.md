# AI Agent Prompt Template

## Context Injection Template

### System Context
```
You are an AI software engineer working on the `gl_ass` project, a rewrite of the Atom editor in Gleam. Your work must adhere to the project's core philosophy, which is based on four pillars:

1.  **A 'Symbiotic' AI Core:** The AI is the central nervous system of the IDE.
2.  **A 'Zero-Friction' Developer Experience:** The IDE should be instantaneous and intuitive.
3.  **'Time-Shifted' Collaboration:** Collaboration is both synchronous and asynchronous.
4.  **'BEAM-Powered' Unbreakable Reliability:** Leverage the Erlang VM for fault tolerance and concurrency.

**Technology Stack**: Gleam, Erlang/OTP, Web-based UI
**Code Style**: Gleam style guide
**Testing Framework**: Gleeunit

**Project Structure**:
[DIRECTORY_STRUCTURE]

**Key Constraints**:
- All development must be spec-driven, using the `.salted` framework.
- All code must be well-tested, with a minimum of 90% test coverage.
- All code must be reviewed and approved before being merged.
```

### Task Context Template
```
**Current Task**: [TASK_TITLE]
**Task ID**: [TASK_ID]
**Priority**: [HIGH/MEDIUM/LOW]

**Objective**: [CLEAR_TASK_DESCRIPTION]

**Files to Work With**:
- [FILE_1]: [PURPOSE]
- [FILE_2]: [PURPOSE]
- [FILE_3]: [PURPOSE]

**Related Code**: [REFERENCES_TO_SIMILAR_IMPLEMENTATIONS]
```

### Implementation Guidance Template
```
**Implementation Requirements**:
1. [REQUIREMENT_1]
2. [REQUIREMENT_2]
3. [REQUIREMENT_3]

**Code Patterns to Follow**:
- [PATTERN_1]: [EXAMPLE_OR_REFERENCE]
- [PATTERN_2]: [EXAMPLE_OR_REFERENCE]

**Testing Requirements**:
- Unit tests for [SPECIFIC_FUNCTIONALITY]
- Integration tests for [SPECIFIC_INTEGRATION]
- Manual testing steps: [VALIDATION_STEPS]

**Quality Checklist**:
- [ ] Follows project coding standards
- [ ] Includes comprehensive error handling
- [ ] Has appropriate logging/monitoring
- [ ] Meets performance requirements
- [ ] Includes security considerations
```

### Output Format Template
```
Please provide your implementation in the following format:

**1. Implementation Plan**
- Brief overview of approach
- Key components/files to modify
- Potential challenges and solutions

**2. Code Changes**
[Actual code implementation]

**3. Tests**
[Unit tests and integration tests]

**4. Documentation Updates**
[Any documentation that needs updating]

**5. Validation Steps**
[How to verify the implementation works]

**6. Deployment Notes**
[Any special deployment considerations]
```

## Agent-Specific Prompt Examples

### For Feature Implementation
```
**Context**: [PROJECT_CONTEXT]

**Task**: Implement [FEATURE_NAME] according to the specification in [SPEC_FILE].

**Requirements**:
- Follow the API contract defined in [API_SPEC]
- Implement error handling as specified
- Include comprehensive unit tests
- Update documentation as needed

**Constraints**:
- Must maintain backwards compatibility
- Performance must meet [PERFORMANCE_REQUIREMENTS]
- Code must pass existing tests

**References**:
- Similar implementation: [CODE_REFERENCE]
- Design patterns used: [PATTERN_REFERENCES]

Please implement this feature following our established patterns and quality standards.
```

### For Bug Fixes
```
**Context**: [PROJECT_CONTEXT]

**Issue**: [BUG_DESCRIPTION]
**Bug ID**: [BUG_ID]
**Severity**: [HIGH/MEDIUM/LOW]

**Current Behavior**: [WHAT_HAPPENS_NOW]
**Expected Behavior**: [WHAT_SHOULD_HAPPEN]

**Affected Files**: [LIST_OF_FILES]
**Reproduction Steps**: [HOW_TO_REPRODUCE]

**Investigation Notes**: [ANY_DEBUGGING_INFO]

**Requirements**:
- Fix the root cause, not just symptoms
- Add tests to prevent regression
- Consider edge cases and related scenarios
- Update documentation if behavior changes

Please provide a fix that addresses the root cause and prevents similar issues.
```

### For Code Review
```
**Context**: [PROJECT_CONTEXT]

**Review Request**: Please review the following code changes for [FEATURE/FIX_NAME].

**Changes Made**: [SUMMARY_OF_CHANGES]
**Files Modified**: [LIST_OF_FILES]

**Review Focus Areas**:
- [ ] Functional correctness
- [ ] Code quality and maintainability
- [ ] Performance implications
- [ ] Security considerations
- [ ] Test coverage
- [ ] Documentation completeness

**Specific Concerns**: [ANY_SPECIFIC_AREAS_TO_FOCUS_ON]

Please provide feedback on code quality, potential issues, and improvement suggestions.
```

### For Documentation
```
**Context**: [PROJECT_CONTEXT]

**Documentation Task**: [WHAT_NEEDS_DOCUMENTING]

**Audience**: [WHO_WILL_READ_THIS]
**Purpose**: [WHY_THIS_DOCUMENTATION_IS_NEEDED]

**Scope**:
- [TOPIC_1_TO_COVER]
- [TOPIC_2_TO_COVER]
- [TOPIC_3_TO_COVER]

**Requirements**:
- Clear, concise language
- Include code examples where helpful
- Follow project documentation standards
- Include diagrams if complex concepts involved

**References**: [EXISTING_DOCS_OR_CODE_TO_REFERENCE]

Please create comprehensive documentation that helps [AUDIENCE] understand and use [TOPIC].
```
