FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
EXPOSE 8080
# 何もしない無限ループを裏で回して、Renderのチェックを Java 自体に任せる
CMD java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net
