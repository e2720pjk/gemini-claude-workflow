# Gemini Code Delegation Workflow with Claude

🌐 **Language**: [English](README.md) | [繁體中文](README_zh-TW.md)

This project aims to demonstrate how to establish a standardized Code Delegation Workflow using Gemini CLI,
integrated with Claude Code, to achieve efficient task delegation and code generation.
It allows you to fully leverage Gemini's coordination capabilities and Claude Code's code writing abilities to accelerate development.

## Project Structure

```text
.
├── GEMINI.md             # Gemini's workflow and delegation guidelines
├── GEMINI_zh-TW.md       # Gemini's workflow (Traditional Chinese)
├── claude-with-log.sh    # Shell script for delegating tasks to Claude Code
├── README.md             # This project's documentation (English)
└── README_zh-TW.md       # This project's documentation (Traditional Chinese)
```

## Quick Start

### 1. Initialize Your Project

First, clone this template project to your local machine:

```bash
git clone [Git URL of this project]
cp GEMINI.md GEMINI_zh-TW.md claude-with-log.sh [Your project root directory]
```

### 2. Launch Gemini CLI

Start the Gemini CLI in your project's root directory:

```bash
gemini
```

### 3. Delegate Tasks to Claude Code

When you need Claude Code to assist with writing, modifying, or refactoring code, please follow the delegation patterns defined in the Gemini documentation (`GEMINI_zh-TW.md`).
At this point, Gemini should follow the process for assignment. If Gemini does not actively assign, you can proactively remind it, for example:

```text
Please delegate "requirements" to Claude
```

This will trigger Gemini to delegate the task to Claude Code for execution.

## Success Case Reference

This project is inspired by a successful case where new speech recognition models (FunASR) and Google Translate translation solutions were successfully integrated into the `auto-subtitle-translate` project.
The development process of that project strictly followed the delegation process defined in the Gemini documentation and utilized `claude-with-log.sh` for effective task management.

[auto-subtitle-translate](https://github.com/e2720pjk/auto-subtitle-translate.git)

---
