# Project Context Template

## Project Identity
- **Project Name**: gl_ass (Atom Rewrite in Gleam)
- **Version**: 1.0.0
- **Repository**: [Git repository URL]
- **Primary Language**: Gleam
- **Last Updated**: 2025-08-24

## Google's Software Engineering Philosophy
This project will be guided by the software engineering principles and practices outlined in the Google SWE book. The following are the key principles that will guide the development of the `gl_ass` project:

- **Programming Over Time:** The codebase will be designed to be maintainable and adaptable over the long term. We will prioritize code that is easy to understand, easy to change, and easy to delete.
- **Scale and Efficiency:** The development process will be designed to scale to a large number of engineers and a large codebase. We will use automation and tooling to improve efficiency and reduce toil.
- **Trade-offs and Costs:** All decisions will be made with a clear understanding of the trade-offs and costs involved. We will strive to make data-driven decisions and to be transparent about the rationale behind our choices.
- **Teamwork and Collaboration:** The project will foster a culture of teamwork, collaboration, and psychological safety. We will encourage open communication, constructive feedback, and mutual respect.
- **Knowledge Sharing:** The project will have a strong emphasis on knowledge sharing through documentation, code reviews, and mentorship. We believe that everyone has something to teach and something to learn.
- **Testing:** The project will have a comprehensive testing strategy, including unit tests, integration tests, and end-to-end tests. We will follow the "Test, Commit, and Revert" (TCR) philosophy, where every change is tested before it is committed.
- **Continuous Integration and Delivery:** The project will use CI/CD to automate the build, test, and deployment process. We will strive for a fast and reliable release pipeline.

## Business Overview
### Purpose
Atom is a hackable text editor for the 21st century, built on modern technologies. It is designed to be deeply customizable, but still approachable using the default configuration. This project is a rewrite of the original Atom editor in the Gleam programming language, with the goal of creating a more modern, reliable, and performant text editor.

### Target Users
- **Primary**: Developers who need a highly customizable and extensible text editor for coding.
- **Secondary**: Writers, students, and anyone who needs a powerful and flexible text editor for writing and note-taking.
- **Admin/Internal**: Not applicable.

### Success Metrics
- [Key performance indicator 1]
- [Key performance indicator 2]
- [Key performance indicator 3]

## Technical Architecture
### System Architecture
Atom has a modular architecture. It consists of a lean core and a large number of packages that provide additional functionality. Even core features like the tree view and the settings view are implemented as packages. This makes the editor highly extensible and customizable.

The editor is built on the Electron framework, which allows it to run on different operating systems using web technologies.

The rewrite in Gleam will follow a similar modular architecture, with a core editor and a set of packages. However, it will be built on the Erlang/OTP runtime, which will provide a more robust and scalable foundation. The architecture will follow the principles of Self-contained systems, MVVM + Hexagonal Architecture, and the 12 Factor App methodology. Communication between components will be handled by gleamrpc (a combination of Erlang and gRPC).

### Technology Stack
- **Original Atom**:
  - **Frontend**: JavaScript, CoffeeScript, Less, HTML
  - **Backend**: Node.js (via Electron)
  - **Framework**: Electron
- **Atom Rewrite**:
  - **Frontend**: (To be determined, likely a web framework that can be rendered in a native web view)
  - **Backend**: Gleam, Erlang/OTP
  - **Framework**: (To be determined, will be based on the Erlang/OTP ecosystem)

### Key Design Decisions
1. **[Decision 1]**: [Rationale and implications]
2. **[Decision 2]**: [Rationale and implications]
3. **[Decision 3]**: [Rationale and implications]

## Development Standards
### Code Style
- **JavaScript**: The JavaScript code in the original Atom project follows the "Standard" style, with some modifications from Prettier. The configuration can be found in the `.eslintrc.json` file.
- **CoffeeScript**: The CoffeeScript code follows the rules defined in the `coffeelint.json` file. This includes rules like `no_empty_param_list`, `arrow_spacing`, and `prefer_english_operator`.
- **Gleam**: The Gleam code in the rewrite will follow the official Gleam style guide.

### Testing Requirements
- **Unit Tests**: The original Atom project uses Jasmine for unit testing. The rewrite will also use a unit testing framework suitable for Gleam.
- **Integration Tests**: [Strategy and tools]
- **End-to-End Tests**: [Framework and critical paths]
- **Minimum Coverage**: [Percentage requirement]

### Security Guidelines
- **Authentication**: [Method and implementation details]
- **Authorization**: [RBAC, ABAC, etc.]
- **Data Protection**: [Encryption, PII handling]
- **Input Validation**: [Strategy and tools]

## Current State
### Completed Features
The original Atom editor has a rich feature set, provided by a large number of packages. The following is a non-exhaustive list of the most important features:
- **About page**: Shows information about the editor.
- **Autoflow**: Formats text.
- **Bookmarks**: Mark lines and jump to them.
- **Bracket-matcher**: Highlights matching brackets.
- **Command-palette**: Find and run available commands.
- **Deprecation-cop**: Helps developers to find and fix deprecated API usage.
- **Dev-live-reload**: Reloads the editor when files change.
- **Encoding-selector**: Select the file encoding.
- **Exception-reporting**: Reports uncaught exceptions.
- **Find-and-replace**: Find and replace text.
- **Fuzzy-finder**: Quickly open files.
- **Git-diff**: Shows git diffs in the editor.
- **Go-to-line**: Jump to a specific line.
- **Grammar-selector**: Select the grammar for the current file.
- **Incompatible-packages**: Shows a list of incompatible packages.
- **Line-ending-selector**: Select the line ending for the current file.
- **Link**: Open links in the editor.
- **Markdown-preview**: Preview markdown files.
- **Notifications**: Shows notifications.
- **Open-on-github**: Open the current file on GitHub.
- **Package-generator**: Generates a new package.
- **Settings-view**: The settings view.
- **Snippets**: Insert code snippets.
- **Spell-check**: Spell checker.
- **Status-bar**: The status bar at the bottom of the editor.
- **Styleguide**: A styleguide for UI components.
- **Symbols-view**: View and jump to symbols in a file.
- **Tabs**: The tabs for open editors.
- **Timecop**: A tool for debugging performance issues.
- **Tree-view**: The file tree view on the left side of the editor.
- **Update-package-dependencies**: Updates package dependencies.
- **Welcome**: The welcome screen.
- **Whitespace**: Shows and removes whitespace.
- **Wrap-guide**: Shows a wrap guide in the editor.

### Known Issues
- **High Priority**:
  - The `fs-admin` package fails to build with modern versions of Node.js.
  - The build process requires an older version of Python (e.g., 3.8) to work correctly.
  - The build process requires the `libsecret-1-dev` package to be installed on Linux.
  - The build process requires internet access to download dependencies from GitHub.
- **Medium Priority**:
  - There are several areas in the codebase that need refactoring, such as the use of deprecated APIs and the need to remove conditional logic once new APIs are stable.
  - Some parts of the code are not language-specific and could be improved to be more language-aware.
  - There are some pending tests that need to be implemented.
  - The update manager could be improved to support canceling update downloads.
  - The `autoflow` package could be improved to be more language-specific.
  - The theme manager could be improved to list all available themes.
- **Technical Debt**:
  - The project has a large number of outdated dependencies.
  - There are many "TODO" and "FIXME" comments scattered throughout the codebase that need to be addressed.
  - Some parts of the code are written in CoffeeScript, which is a deprecated language. The rewrite to Gleam will address this.

### Upcoming Priorities
1. [Next sprint/iteration priorities]
2. [Medium-term roadmap items]
3. [Long-term vision items]

## Domain Knowledge
### Business Rules
1. **[Rule 1]**: [Description and implications]
2. **[Rule 2]**: [Description and implications]
3. **[Rule 3]**: [Description and implications]

### Data Model Overview
```
[Key entities and relationships]
User (1) ──── (M) Order
Order (1) ──── (M) OrderItem
OrderItem (M) ──── (1) Product
```

### External Dependencies
- **[Service 1]**: [Purpose, API details, constraints]
- **[Service 2]**: [Purpose, API details, constraints]
- **[Service 3]**: [Purpose, API details, constraints]

## Development Environment
### Setup Requirements
- **Language version requirements**: Gleam, Erlang/OTP
- **Database setup instructions**: [Database setup instructions]
- **Environment variables needed**: [Environment variables needed]
- **Third-party service credentials**: [Third-party service credentials]

### Local Development
```bash
# Setup commands
[command 1]
[command 2]
[command 3]

# Run commands
[development server command]
[test command]
[build command]
```

### Deployment Pipeline
- **Staging**: [URL, deployment process]
- **Production**: [URL, deployment process]
- **Rollback**: [Emergency rollback procedure]

---
*Update this context regularly as the project evolves*
