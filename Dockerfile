FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
EXPOSE 8080
# Javaの標準機能だけでRenderのポートチェック(HTTP 200)に応答し続ける
CMD (java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net) & (echo 'while (true) { try (var ss = new java.net.ServerSocket(8080); var s = ss.accept(); var os = s.getOutputStream()) { os.write("HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nOK".getBytes()); } catch (Exception e) {} }' > Health.java && jshell Health.java)
