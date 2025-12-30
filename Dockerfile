FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

# BCDiceConfiguration をコピー
COPY BCDiceConfiguration /app/BCDiceConfiguration

# JAR ファイルをコピー
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar

# Render で環境変数を設定している場合
CMD ["java", "-jar", "discord-bcdicebot.jar", "$T", "http://localhost:50051"]
