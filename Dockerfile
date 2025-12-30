FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# 8080番を開く宣言
EXPOSE 8080
# Botを起動しつつ、PythonでRenderの生存確認(ポート8080)に「OK」と返し続ける
CMD (java -jar discord-bcdicebot.jar $T https://bcdice.trpg.net) & (python3 -m http.server 8080)
