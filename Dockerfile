FROM openjdk:17-jdk-slim
COPY . /app
WORKDIR /app
CMD ["java", "-jar", "discord-bcdicebot.jar", "MTM4NzAxNjYyNjU0NDg0MDc4Nw.G5ab5l.8U8fPHB0IHqnQcSvFrJelZxB-wME7EWecqmf3s", "https://bcdice.trpg.net"]
