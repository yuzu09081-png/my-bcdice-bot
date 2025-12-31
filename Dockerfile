FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

# 必要なファイルをコピー
COPY BCDiceConfiguration /app/BCDiceConfiguration
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar

# 起動コマンド：start.shを使わず、ここで直接APIサーバーのURLを指定します
ENTRYPOINT ["java", "-jar", "discord-bcdicebot.jar"]
CMD ["$BOT_TOKEN", "https://bcdice.onlinesession.app", "1"]
