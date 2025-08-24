# Quick Start Guide for the .salted Framework

This guide provides a step-by-step process for initializing a new project using the `.salted` framework.

## Step 1: Clone the Framework

Clone this repository to your local machine. This will give you the complete directory structure and all the template files.

```bash
git clone <repository-url> your-new-project
cd your-new-project
```

## Step 2: Initialize Your Project

Run the `init_project.sh` script to automate the setup of your new project. This script will:
- Copy the templates to the correct directories.
- Clear out the placeholder content in the templates.
- Create a new `gleam.toml` file for your project.

```bash
./.salted/init_project.sh "Your New Project Name"
```

## Step 3: Define Your Project Context

Fill out the `PROJECT_CONTEXT.md` file in the `.salted/.ai/context/` directory. This is the most important step, as it will provide the foundation for all subsequent work.

- **Project Identity:** Define the name, version, and primary language of your project.
- **Business Overview:** Describe the purpose, target users, and success metrics of your project.
- **Technical Architecture:** Outline the high-level architecture and technology stack of your project.
- **Development Standards:** Define the coding standards, testing requirements, and security guidelines for your project.

## Step 4: Create Your First Feature Specification

Create a new feature specification in the `.salted/.ai/specs/features/` directory. Use the `template.md` file as a starting point.

- **Feature Identity:** Give your feature a unique ID and a descriptive name.
- **Business Context:** Write a user story and describe the business value of the feature.
- **Functional Requirements:** Detail the core functionality of the feature.
- **Technical Requirements:** Outline the technical implementation details of the feature.

## Step 5: Break Down Your Feature into Tasks

For each feature, create one or more task specifications in the `.salted/.ai/tasks/active/` directory. Use the `TASK_SPECIFICATION.md` template in the `.salted/.ai/tasks/templates/` directory as a starting point.

- **Task Identity:** Give your task a unique ID and a clear, action-oriented title.
- **Task Description:** Describe the objective and scope of the task.
- **Implementation Details:** Specify the files to be modified and the code changes required.
- **Quality Requirements:** Define the testing, performance, and security requirements for the task.

## Step 6: Start Coding!

You are now ready to start coding. You can use the feature and task specifications to guide your work. You can also use the prompt templates in the `.salted/.ai/prompts/` directory to help you interact with AI coding agents.
