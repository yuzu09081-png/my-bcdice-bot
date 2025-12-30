FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app

# Renderにポートを使うことを宣言
EXPOSE 8080

# 外部ツールを使わず、Javaだけでポート8080を開きながらBotを起動する命令
CMD (java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net) & (while true; do { echo -e "HTTP/1.1 200 OK\r\n\r\nOK"; } | timeout 5 java -cp . java.net.ServerSocket 8080 || true; sleep 1; done)
