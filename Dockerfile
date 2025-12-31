FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

# ファイルのコピー
COPY BCDiceConfiguration /app/BCDiceConfiguration
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar

# CMDではなく ENTRYPOINT を使い、シェルを介さず直接実行します
# $BOT_TOKEN は Render の Environment Variables から読み込まれます
ENTRYPOINT ["java", "-jar", "discord-bcdicebot.jar"]
CMD ["$BOT_TOKEN", "https://bcdice.onlinesession.app", "1"]
