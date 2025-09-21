# Gemini Code Delegation Workflow with Claude

🌐 **語言**: [English](README.md) | [繁體中文](README_zh-TW.md)

這個專案旨在示範如何透過 Gemini CLI 建立一個標準化的程式碼委派工作流程 (Code Delegation Workflow)，
並與 Claude Code 整合，以實現高效的任務委派和程式碼生成。
它讓您可以充分利用 Gemini 的協調能力和 Claude Code 的程式碼編寫能力來加速開發。

## 專案結構

```text
.
├── GEMINI.md             # Gemini 工作流程和委派規範（英文版）
├── GEMINI_zh-TW.md       # Gemini 工作流程和委派規範（繁體中文版）
├── claude-with-log.sh    # 用於委派任務給 Claude Code 的 Shell 腳本
├── README.md             # 本專案的說明文件（英文版）
└── README_zh-TW.md       # 本專案的說明文件（繁體中文版）
```

## 快速開始

### 1. 初始化專案

首先，將此模板專案複製到您的本地：

```bash
git clone https://github.com/e2720pjk/gemini-claude-workflow.git
cp GEMINI.md GEMINI_zh-TW.md claude-with-log.sh [您的專案根目錄]
```

### 2. 啟動 Gemini CLI

在您的專案根目錄中啟動 Gemini CLI：

```bash
gemini
```

### 3. 委派任務給 Claude Code

當您需要 Claude Code 協助編寫、修改或重構程式碼時，請遵循 Gemini 文件（`GEMINI_zh-TW.md`）中定義的委派模式。
此時，Gemini 理應遵循流程進行指派。如果 Gemini 沒有主動指派，您可以主動提醒它，例如：

```text
請委派「需求」給Claude
```

這將會觸發 Gemini 將任務委派給 Claude Code 執行。

## 成功案例參考

本模板專案的靈感來自於一個成功的案例，該案例在 `auto-subtitle-translate` 專案中
成功整合了新的語音辨識模型 (FunASR) 和 Google Translate 翻譯方案。
該專案的開發過程嚴格遵循了 Gemini 文件中定義的委派流程，
並利用 `claude-with-log.sh` 進行了有效的任務管理。

[auto-subtitle-translate](https://github.com/e2720pjk/auto-subtitle-translate.git)

---
