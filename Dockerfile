FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

COPY BCDiceConfiguration /app/BCDiceConfiguration
COPY discord-bcdicebot.jar /app/discord-bcdicebot.jar

# ENTRYPOINTを消して、CMDを以下のように1行にします
# これにより、シェル経由で起動され、$BOT_TOKEN が正しく展開されます
CMD java -jar discord-bcdicebot.jar "$BOT_TOKEN" "https://bcdice.onlinesession.app" "1"