# Coding Standards

This document outlines the coding standards and conventions for the `gl_ass` project. These standards are based on the principles outlined in the Google SWE book, with a focus on creating a codebase that is maintainable, scalable, and easy to work with.

## Guiding Principles

The following principles guide the development of our coding standards:

- **Rules are laws, not suggestions.** All engineers are expected to follow the rules outlined in this document.
- **Optimize for the reader.** Code is read more often than it is written. We prioritize clarity and readability over conciseness.
- **Be consistent.** A consistent codebase is easier to understand, maintain, and automate.
- **Avoid error-prone and surprising constructs.** We favor simple, straightforward code over clever or complex code.
- **Concede to practicalities.** We are not dogmatic about our rules. We are willing to make exceptions for performance, interoperability, or other practical reasons.

## Style Guide

### Gleam

The Gleam code in this project will follow the official [Gleam style guide](https://gleam.run/book/tour/style-guide.html). In addition, we will follow these conventions:

- **Formatting:** We will use the default Gleam formatter (`gleam format`) to ensure consistent formatting.
- **Naming Conventions:** We will follow the naming conventions outlined in the Gleam style guide (e.g., `snake_case` for variables and functions, `PascalCase` for types).
- **Comments:** We will use comments to explain complex or non-obvious code. We will also use documentation comments to document public APIs.

### Other Languages

For other languages used in the project (e.g., JavaScript, HTML, CSS), we will follow the relevant industry-standard style guides (e.g., StandardJS for JavaScript).

## Changing the Rules

The coding standards are not set in stone. They will evolve over time as the project progresses and as we learn more about what works best for our team.

Any engineer can propose a change to the coding standards by starting a discussion in the project's communication channels. The proposed change will be reviewed by the team, and a decision will be made by consensus.

## Applying the Rules

The coding standards will be enforced through a combination of tooling and code reviews.

- **Tooling:** We will use linters and formatters to automatically check for compliance with the coding standards.
- **Code Reviews:** Code reviews will be used to enforce the rules that cannot be checked automatically. All code will be reviewed by at least one other engineer before it is merged into the `main` branch.
