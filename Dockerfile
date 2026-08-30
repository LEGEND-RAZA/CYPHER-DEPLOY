FROM node:20

RUN apt update && apt install -y ffmpeg 
WORKDIR /app
RUN git clone https://github.com/Dark-Xploit/CypherX.git .
RUN yarn install

CMD ["node", "index.js"]
