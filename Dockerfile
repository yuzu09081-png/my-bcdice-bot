FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# Renderに「8080番ポートを使うよ」と嘘の申告をする
EXPOSE 8080
# 起動時に後ろでこっそりポートを開くだけの命令を追加
CMD (python3 -m http.server 8080 &) && java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net
