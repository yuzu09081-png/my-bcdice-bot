FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# sh -c を使わず、直接変数を書く形に変更
CMD java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net
