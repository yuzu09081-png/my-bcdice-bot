FROM eclipse-temurin:17-jdk-focal
COPY . /app
WORKDIR /app
# 8080番を開く宣言
EXPOSE 8080
# Pythonを使わず、Javaで簡易サーバーを裏で動かす命令に変更
CMD (java -cp discord-bcdicebot.jar com.hiyoko.discord.bot.BCDice.BCDiceBot $T https://bcdice.trpg.net) & jwebserver -p 8080 -b 0.0.0.0
