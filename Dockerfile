FROM MukkiMuka/ALPHA:fullcontrol

RUN git clone https://github.com/devilalpha/Alpha /root/Alpha
WORKDIR /root/Alpha/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
