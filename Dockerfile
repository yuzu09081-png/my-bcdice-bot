FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

# 必要なファイルをコピー（BCDiceConfigurationフォルダを忘れずに！）
COPY BCDiceConfiguration /app/BCDiceConfiguration
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar

# トークンは環境変数から読み込む設定
ENTRYPOINT ["java", "-jar", "discord-bcdicebot.jar"]
CMD ["$BOT_TOKEN", "https://bcdice.onlinesession.app", "1"]
