#!/bin/bash
# claude-with-log.sh
# 整合 Gemini CLI 與 Claude Code 的日誌記錄腳本
# 用途：執行 Claude 指令並同時保存 JSON 輸出到檔案

LOGDIR="logs/claude"
mkdir -p "$LOGDIR"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOGFILE="$LOGDIR/claude_$TIMESTAMP.json"

# 解析參數
USE_FILE=false
TASK_FILE=""

while [[ $# -gt 0 ]]; do
    case $1 in
        -f|--file)
            USE_FILE=true
            TASK_FILE="$2"
            shift 2
            ;;
        *)
            TASK_ARGS="$*"
            break
            ;;
    esac
done

# 檢查參數
if [ "$USE_FILE" = true ]; then
    if [ -z "$TASK_FILE" ] || [ ! -f "$TASK_FILE" ]; then
        echo "❌ 錯誤: 檔案 '$TASK_FILE' 不存在"
        echo "使用方式: $0 -f <task-file>"
        exit 1
    fi
    TASK_CONTENT=$(cat "$TASK_FILE")
    echo "📋 執行 Claude 指令 (從檔案: $TASK_FILE)"
else
    if [ -z "$TASK_ARGS" ]; then
        echo "使用方式: $0 <claude-command>"
        echo "       或: $0 -f <task-file>"
        echo "範例: $0 '/BMad:agents:bmad-master; *help'"
        echo "     $0 -f task-description.txt"
        exit 1
    fi
    TASK_CONTENT="$TASK_ARGS"
    echo "📋 執行 Claude 指令: $TASK_ARGS"
fi

echo "📁 日誌儲存至: $LOGFILE"
echo "⏰ 執行時間: $(date)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 執行 Claude 並同時輸出到終端和檔案
# 使用 --permission-mode acceptEdits 自動接受編輯權限
claude -p --output-format json --permission-mode acceptEdits "$TASK_CONTENT" | tee "$LOGFILE"

# 檢查執行結果
if [ ${PIPESTATUS[0]} -eq 0 ]; then
    echo ""
    echo "✅ 執行完成，日誌已儲存至: $LOGFILE"
else
    echo ""
    echo "❌ 執行失敗，請檢查指令或 Claude Code 狀態"
    exit 1
fi