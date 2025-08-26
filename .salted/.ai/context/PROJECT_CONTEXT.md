# Project Context: gl_ass

## 1. Project Identity
- **Project Name**: `gl_ass` (A Reborn Atom Editor)
- **Version**: 1.0.0
- **Repository**: [Git repository URL]
- **Primary Language**: Gleam
- **Last Updated**: 2025-08-26

## 2. Core Philosophy
The development of `gl_ass` is guided by four core pillars, detailed in the `PHILOSOPHY.md` document. These principles must inform all design and development decisions.

-   **Pillar 1: The "Symbiotic" AI Core:** The AI is the central nervous system of the IDE, enabling deep codebase intelligence, agentic workflows, and proactive debugging.
-   **Pillar 2: A "Zero-Friction" Developer Experience:** The IDE should be instantaneous, intuitive, and disappear into the background through zero-configuration, integrated learning, and a focus-aware UI.
-   **Pillar 3: "Time-Shifted" Collaboration:** Collaboration is both synchronous and asynchronous, supported by persistent in-code conversations and integrated task management.
-   **Pillar 4: "BEAM-Powered" Unbreakable Reliability:** Leveraging Gleam and the Erlang VM to build a fundamentally reliable, fault-tolerant, and massively concurrent editor.

## 3. Implementation Strategy
The development of `gl_ass` will be done in two phases:

- **Phase 1: 1:1 Parity with Atom.** The first phase will focus on creating a feature-complete clone of the original Atom editor in Gleam. This will involve a complete rewrite of the editor from scratch, with no JavaScript code. The goal is to achieve 1:1 parity with Atom's features and functionality.
- **Phase 2: The `gl_ass` Vision.** The second phase will focus on implementing the advanced features that will make `gl_ass` the "last editor needed for todays development". This includes the "Symbiotic" AI Core, "Time-Shifted" Collaboration, and other features that are not available in Atom.

## 4. Business Overview
### Purpose
`gl_ass` is a "final" text editor for modern development, designed to be the last editor a developer will ever need. It is a complete rewrite of the original Atom editor, built from the ground up in Gleam to be a hyper-performant, AI-native, and collaborative tool for the 21st century.

### Target Users
- **Primary**: Professional developers who demand performance, intelligence, and a seamless workflow.
- **Secondary**: Open-source contributors, students, and writers who need a powerful and flexible tool.

### Success Metrics
- **AI Symbiosis:**
    - Percentage of complex tasks (e.g., feature implementation, complex bug fixes) successfully delegated to and completed by AI agents.
    - Time-to-resolution for deep codebase questions answered by the AI.
- **Developer Experience:**
    - Time from project-open to "ready-to-code" is less than 5 seconds for any project.
    - User-reported "perceptible lag" events per session approaches zero.
- **Collaboration:**
    - Adoption rate of in-code conversation and task-tracking features.
    - Time saved by teams using real-time and asynchronous collaboration features.
- **Reliability:**
    - Number of editor crashes is zero, even when plugins or language servers fail.
    - UI responsiveness remains constant regardless of the number of background tasks.

## 5. Technical Architecture
### System Architecture
The architecture of `gl_ass` is designed to support our core philosophy. It is a modular, distributed system built on the Erlang/OTP runtime.

- **Core Principles:** The architecture adheres to the principles of Self-contained systems, MVVM (Model-View-ViewModel) for the UI, Hexagonal Architecture for the backend, and the 12-Factor App methodology.
- **Model Context Protocol (MCP):** All communication between components will be handled by the Model Context Protocol (MCP), a real-time, bidirectional protocol for sharing and synchronizing state and context. The MCP is defined in the `specs/MODEL_CONTEXT_PROTOCOL.md` document.
- **AI Core Integration:** The AI Core is a first-class citizen, with deep hooks into the editor engine and other components.
- **Fault Tolerance:** The BEAM's process isolation is leveraged to ensure that failures in one component (e.g., a plugin) do not affect the rest of the system.

### Technology Stack
- **Backend**: Gleam, Erlang/OTP
- **Frontend**: Web-based UI (React/Vue/Svelte TBD) rendered in a native web view.
- **Communication**: `gleamrpc` (gRPC over Erlang distribution) for the MCP.
- **Text Engine**: Custom-built rope data structure for efficient text manipulation.
- **Syntax Highlighting**: Tree-sitter.

### Key Design Decisions
1. **Gleam on the BEAM:** Chosen for its type safety, concurrency, and fault tolerance, which are essential for achieving our reliability and performance goals.
2. **Web-Based UI:** Chosen for its flexibility, cross-platform compatibility, and access to a rich ecosystem of UI components and development tools.
3. **AI-Native Architecture:** The AI is not an add-on; the system is designed from the ground up to support deep AI integration.
4. **Spec-Driven Development:** All development is guided by the `.salted` framework to ensure clarity, consistency, and a high level of automation.

## 6. Development Standards
### Code Style
- **Gleam**: The official Gleam style guide will be enforced by the default Gleam formatter (`gleam format`).
- **Other Languages**: Industry-standard style guides (e.g., StandardJS for JavaScript) will be used.

### Testing Requirements
- **Philosophy:** We follow the "Test, Commit, and Revert" (TCR) philosophy. Every change must be tested.
- **Unit Tests:** All public functions must have unit tests.
- **Integration Tests:** All major components must have integration tests.
- **End-to-End Tests:** Critical user workflows will be covered by end-to-end tests.
- **Minimum Coverage:** A minimum of 90% test coverage is required for all new code.

### Security Guidelines
- **Authentication**: All user-facing services must have robust authentication.
- **Authorization**: All actions must be authorized.
- **Data Protection**: All sensitive data must be encrypted at rest and in transit.
- **Input Validation**: All input from external sources must be validated.

## 7. Current State
### Completed Features
- The `.salted` framework for spec-driven development has been created.
- The core philosophy and principles for the `gl_ass` project have been defined.

### Known Issues
- The project is in its initial planning and design phase. There are no known implementation issues at this time.

### Upcoming Priorities
1.  Achieve 1:1 feature parity with the original Atom editor (Phase 1).
2.  Finalize the choice of web framework for the UI.
3.  Implement the custom rope data structure for the core editor engine.
4.  Develop the Gleam wrapper for the Tree-sitter library.

## 8. Domain Knowledge
### Domain-Specific Language (DSL)
- **Buffer:** A data structure that holds the text of a file.
- **Cursor:** A pointer that indicates the current position in a buffer.
- **Selection:** A range of text that is selected by the user.
- **Marker:** A persistent marker that can be used to track a position in a buffer.
- **Pane:** A container for one or more views.
- **View:** A visual representation of a buffer.
- **Gutter:** The area to the left of the editor that displays line numbers and other information.
- **Token:** A piece of text with a specific meaning.
- **Scope:** A set of tokens that have a common meaning.
- **Grammar:** A set of rules that defines the syntax of a language.
- **Theme:** A set of colors and styles that defines the look and feel of the editor.
- **Package:** A bundle of code that extends the functionality of the editor.

## 9. Development Environment
### Setup Requirements
- **Language version requirements**: Gleam, Erlang/OTP
- **Database setup instructions**: [To be defined]
- **Environment variables needed**: [To be defined]
- **Third-party service credentials**: [To be defined]

### Local Development
The project includes a `Taskfile.yaml` file that provides a set of common tasks for developing the project. You can use the `task` command to run these tasks.

To list all the available tasks, run:
```bash
task --list
```

To run a specific task, for example the `test` task, run:
```bash
task test
```

### Deployment Pipeline
- **Staging**: [To be defined]
- **Production**: [To be defined]
- **Rollback**: [To be defined]

---
*Update this context regularly as the project evolves*
