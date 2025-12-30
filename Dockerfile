FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY BCDiceConfiguration /app/BCDiceConfiguration

# Render で環境変数を設定している場合
CMD ["java", "-jar", "discord-bcdicebot.jar", "$T", "http://localhost:50051"]


