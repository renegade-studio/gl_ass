# Domain Knowledge

This document contains information about the business rules and domain logic for the `gl_ass` project.

## Domain-Specific Language (DSL)

To ensure a shared understanding of the domain, we will use the following domain-specific language when discussing the project:

- **Buffer:** A data structure that holds the text of a file.
- **Cursor:** A pointer that indicates the current position in a buffer.
- **Selection:** A range of text that is selected by the user.
- **Marker:** A persistent marker that can be used to track a position in a buffer, even as the buffer is modified.
- **Pane:** A container for one or more views.
- **View:** A visual representation of a buffer.
- **Gutter:** The area to the left of the editor that displays line numbers and other information.
- **Token:** A piece of text with a specific meaning (e.g., a keyword, a variable, a string).
- **Scope:** A set of tokens that have a common meaning (e.g., a function, a class, a comment).
- **Grammar:** A set of rules that defines the syntax of a language.
- **Theme:** A set of colors and styles that defines the look and feel of the editor.
- **Package:** A bundle of code that extends the functionality of the editor.
