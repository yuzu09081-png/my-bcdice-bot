#!/bin/sh
# 外部の公開APIサーバーを指定します
BCDICE_API_URL="https://bcdice.onlinesession.app"
IGNORE_ERROR=1

# 引数としてトークンとURLを渡して実行します
java -jar discord-bcdicebot.jar "$BOT_TOKEN" "$BCDICE_API_URL" "$IGNORE_ERROR"
