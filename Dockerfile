FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# 8080番を開く宣言
EXPOSE 8080
# Javaそのものに簡易サーバーとしてポートを開かせるコマンド
CMD java -cp discord-bcdicebot.jar:$(java -XshowSettings:properties -version 2>&1 | grep 'java.home' | awk '{print $3}')/lib/* com.hiyoko.discord.bot.BCDice.BCDiceBot $T https://bcdice.trpg.net & (while true; do echo -e "HTTP/1.1 200 OK\r\n\r\n OK" | nc -l -p 8080; done)
