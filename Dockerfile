FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
EXPOSE 8080
CMD (java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net) & (while true; do echo -e "HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nOK" | timeout 5 java -cp . java.net.ServerSocket 8080 || true; sleep 1; done)
