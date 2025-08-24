#!/bin/bash

# This script initializes a new project using the .salted framework.

# Check if a project name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <project-name>"
  exit 1
fi

PROJECT_NAME=$1

# Create the main project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Copy the .salted framework into the new project
cp -r ../.salted .

# Create a new gleam.toml file
gleam new . --name "$PROJECT_NAME"

# Clear out the placeholder content in the templates
# (This part is left as an exercise for the user, as it depends on their specific needs)

echo "Project '$PROJECT_NAME' initialized successfully."
echo "You can now start defining your project context in .salted/.ai/context/PROJECT_CONTEXT.md"
