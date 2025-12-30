FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# ポート開放の細工をせず、Botだけを起動する
CMD java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net
