FROM openjdk:17-jdk-slim
COPY . /app
WORKDIR /app
# トークンの部分を $DISCORD_TOKEN に置き換え
CMD ["sh", "-c", "java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net"]


