# Architecture Overview

This document provides an overview of the system architecture for the `gl_ass` project.

## Architectural Principles

The architecture of the `gl_ass` project will be guided by the following principles, which are inspired by the Google SWE book and our own core philosophy:

- **AI-Native:** The system is designed from the ground up to support deep AI integration. The AI is not an add-on; it is a core component of the architecture.
- **Fault-Tolerant:** The system is designed to be resilient to failures. Components can fail and restart without affecting the rest of the system.
- **Massively Concurrent:** The system is designed to handle a large number of concurrent tasks without compromising the responsiveness of the UI.
- **Zero-Friction:** The architecture is designed to provide a seamless and intuitive developer experience.
- **Simplicity:** We will strive for a simple and easy-to-understand architecture.
- **Modularity:** The architecture will be modular, with well-defined interfaces between components.
- **Testability:** The architecture will be designed to be easily testable.

## System Architecture

The `gl_ass` project will have a modular, distributed architecture built on the Erlang/OTP runtime. It will consist of a number of self-contained systems that communicate with each other via the Model Context Protocol (MCP).

### Core Components
- **Core Editor Engine:** The heart of the editor, responsible for text storage, editing operations, and syntax highlighting.
- **UI Layer:** A web-based UI rendered in a native web view.
- **AI Core:** A separate system that provides AI-powered features like code intelligence, agentic workflows, and proactive debugging.
- **Plugin Host:** A separate process that runs plugins as MCP servers.
- **LSP Client:** A client that communicates with language servers via the MCP.
- **Collaboration Service:** A service that powers real-time collaboration via the MCP.

### Architectural Diagram
```
+-----------------+      +------------------+      +-----------------+
|   UI Layer      |<---->| Core Editor      |<---->|   AI Core       |
|  (Web View)     |      |  (Gleam/OTP)     |      |  (Gleam/OTP)    |
+-----------------+      +------------------+      +-----------------+
       ^                      ^                            ^
       |                      |                            |
       v                      v                            v
+-------------------------------------------------------------+
|                Model Context Protocol (MCP)                 |
|                   (gleamrpc / gRPC)                         |
+-------------------------------------------------------------+
       ^                      ^                            ^
       |                      |                            |
       v                      v                            v
+-----------------+      +------------------+      +-----------------+
|  Plugin Host    |<---->|  LSP Client      |<---->| Collaboration   |
|  (Gleam/OTP)    |      |  (Gleam/OTP)     |      |  Service        |
+-----------------+      +------------------+      +-----------------+
```

## Alignment with Philosophy

- **Pillar 1: The "Symbiotic" AI Core:** The AI Core is a dedicated, first-class component in the architecture, allowing it to have deep integration with all other parts of the system via the MCP.
- **Pillar 2: A "Zero-Friction" Developer Experience:** The decoupled UI layer and the asynchronous, message-passing architecture will ensure a highly responsive UI.
- **Pillar 3: "Time-Shifted" Collaboration:** The Collaboration Service will be designed to support both real-time and asynchronous collaboration via the MCP.
- **Pillar 4: "BEAM-Powered" Unbreakable Reliability:** The use of Erlang/OTP and the supervision tree model will ensure that the editor is fault-tolerant and highly reliable. The Plugin Host will run plugins in separate processes, preventing them from crashing the editor.
