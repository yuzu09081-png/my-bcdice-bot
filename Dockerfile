FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY BCDiceConfiguration /app/BCDiceConfiguration
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar
COPY start.sh /app/start.sh

# start.sh に実行権限を付与（Linux 系の場合）
RUN chmod +x /app/start.sh

CMD ["sh", "/app/start.sh"]
