FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# 8080番を開く宣言
EXPOSE 8080
# 外部ツール(nc, python等)を一切使わず、Javaと標準シェルだけでポートを維持する
CMD java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net & (while true; do echo -e "HTTP/1.1 200 OK\r\n\r\nOK" | timeout 5 cat -l -p 8080 || true; sleep 1; done)
