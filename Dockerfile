FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
EXPOSE 8080
# Botを起動しつつ、jshellを使ってRenderの生存確認(ポート8080)に「OK」と返し続ける
CMD (java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net) & (echo 'while (true) { try (var ss = new java.net.ServerSocket(8080); var s = ss.accept(); var os = s.getOutputStream()) { os.write("HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nOK".getBytes()); } catch (Exception e) {} }' > Health.java && jshell Health.java)
