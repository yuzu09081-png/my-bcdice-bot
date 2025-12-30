FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# トークンの部分を $T に置き換え
CMD ["sh", "-c", "java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net"]
