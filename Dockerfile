FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar

# Render で環境変数を設定している場合
CMD ["java", "-jar", "discord-bcdicebot.jar", "$DISCORD_BOT_TOKEN", "http://localhost:50051"]
