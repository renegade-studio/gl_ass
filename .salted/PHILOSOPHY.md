# The gl_ass Philosophy: Pillars of a Perfect IDE

This document outlines the guiding philosophy and core pillars that will elevate `gl_ass` from a great text editor to a "perfect," revolutionary Integrated Development Environment. These principles should inform every design and implementation decision.

## Pillar 1: The "Symbiotic" AI Core

The AI is not a feature; it is the central nervous system of the IDE. Our goal is to create a true AI-native development environment where the human and AI collaborate as a single, highly effective unit.

-   **Deep Codebase Intelligence:** The AI will maintain a persistent, semantic graph of the entire project. It will understand not just the code, but the architecture, the history, and the intent behind it. This enables answering deep questions and performing complex, context-aware refactoring.
-   **Agentic Workflows:** The IDE will be a first-class platform for AI agents. Developers will delegate high-level tasks (e.g., "Implement the feature described in FEAT-003") directly within the editor. The agent will then plan, execute, test, and submit its work for review, using the `.salted` framework as its guide.
-   **Proactive, Predictive Debugging:** The AI will act as a "guardian," identifying potential bugs, race conditions, and anti-patterns *before* they are committed. It will provide clear explanations and suggest concrete fixes, learning from the project's history to improve its predictions.

## Pillar 2: A "Zero-Friction" Developer Experience

The IDE should disappear into the background, becoming a seamless extension of the developer's thoughts. Every interaction should be instantaneous and intuitive.

-   **Zero-Configuration Philosophy:** `gl_ass` will intelligently configure itself. Upon opening a project, it will automatically detect the language, framework, build tools, and dependencies, setting up a ready-to-code environment in seconds.
-   **Integrated Learning System:** The editor will be a mentor. It will provide contextual, AI-generated explanations of complex code, new language features, or unfamiliar libraries, helping developers ramp up and master their tools faster.
-   **Focus-Aware UI:** The user interface will dynamically adapt to the developer's current task. The debugging view will be different from the documentation-writing view, surfacing only the most relevant information and tools for the job at hand.

## Pillar 3: "Time-Shifted" Collaboration

Collaboration is not just about real-time editing. The perfect IDE must master both synchronous and asynchronous teamwork, respecting the different ways developers work.

-   **Persistent, In-Code Conversations:** `gl_ass` will allow for threaded conversations attached directly to lines of code, independent of pull requests. This creates a living history of decisions and discussions right where the code lives.
-   **Task-Driven Development:** The editor will have a lightweight, integrated task management system. Tasks from our `.salted/tasks/` directory will be first-class citizens, linked directly to code blocks, and their status can be updated automatically as the code is written and tested.

## Pillar 4: "BEAM-Powered" Unbreakable Reliability

Leveraging Gleam and the Erlang VM (the BEAM) is our key strategic advantage. We will build an editor that is not just fast, but fundamentally more reliable than any competitor.

-   **True Fault Tolerance:** A misbehaving plugin or a crashed language server will *never* bring down the editor core. The BEAM's process isolation allows us to build a self-healing architecture where components can fail and restart without affecting the user's workflow or data.
-   **Massive Concurrency:** The editor will effortlessly handle thousands of concurrent background tasks—indexing, compiling, testing, collaborating—without ever compromising the responsiveness of the user interface. The goal is not just "no perceptible lag," but a feeling of instantaneousness in every action.
