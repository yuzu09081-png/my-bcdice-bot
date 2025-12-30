FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# ポートのことは一旦忘れ、Botの起動だけに集中する
CMD java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net
