#!/bin/sh
# 接続先を外部の公開APIサーバーに固定します
API_URL="https://bcdice.onlinesession.app"
IGNORE_ERROR=1

# 直接引数にトークンとURLを流し込みます
java -jar discord-bcdicebot.jar "$BOT_TOKEN" "$API_URL" "$IGNORE_ERROR"
