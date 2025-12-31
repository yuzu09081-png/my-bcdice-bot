FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

# フォルダとファイルをコピー
COPY BCDiceConfiguration /app/BCDiceConfiguration
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar

# クラウド環境では $BOT_TOKEN などの変数をシェル経由で展開するため、この書き方にします
# 第3引数を "1" にして、Discord側の設定（Intents）と合わせます
CMD java -jar discord-bcdicebot.jar "$BOT_TOKEN" "https://bcdice.onlinesession.app" "1"
