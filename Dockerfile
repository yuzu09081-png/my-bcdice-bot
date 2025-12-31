FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

# 必要なファイルをコピー
COPY BCDiceConfiguration /app/BCDiceConfiguration
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar
COPY discord-bcdice-server.jar /app/discord-bcdice-server.jar
COPY start.sh /app/start.sh

# 実行権限を付与
RUN chmod +x /app/start.sh

# コンテナ起動時に start.sh を実行
CMD ["/app/start.sh"]
