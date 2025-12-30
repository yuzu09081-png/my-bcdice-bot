FROM eclipse-temurin:17-jdk-focal

WORKDIR /app
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar
COPY BCDiceConfiguration /app/BCDiceConfiguration

CMD ["java", "-jar", "/app/discord-bcdicebot.jar", "AdminPasswordHere", "http://localhost:50051"]
