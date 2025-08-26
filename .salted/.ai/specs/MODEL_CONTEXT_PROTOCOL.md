# Model Context Protocol (MCP) Specification

## 1. Overview

The Model Context Protocol (MCP) is a real-time, bidirectional protocol for sharing and synchronizing state and context between the core components of the `gl_ass` editor. It is the backbone of our AI-native, collaborative, and extensible architecture.

The primary goals of the MCP are:
-   **Shared Understanding:** To provide a single source of truth for the state of the editor.
-   **Real-time Synchronization:** To ensure that all components have a consistent and up-to-date view of the state.
-   **Extensibility:** To allow new components (e.g., plugins, AI agents) to easily connect to the editor and interact with its state.
-   **Decoupling:** To decouple components from each other, allowing them to be developed, tested, and deployed independently.

## 2. Core Concepts

-   **Model:** The central data model that represents the state of the editor. This includes the content of all open buffers, the position of all cursors, the state of the UI, etc.
-   **Context:** A subset of the Model that is relevant to a specific component.
-   **Events:** Notifications that are sent when the Model changes.
-   **Subscriptions:** A mechanism for components to subscribe to specific events.

## 3. Protocol Specification

The MCP will be built on top of `gleamrpc` (gRPC over Erlang distribution). It will define a set of services and messages for:
-   **Subscribing to context updates.**
-   **Querying the current state of the context.**
-   **Sending commands to update the context.**
-   **Receiving events when the context changes.**

(Further details to be defined)
