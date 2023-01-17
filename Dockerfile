# 베이스 이미지 명시 
FROM node:10 

WORKDIR /usr/src/app

COPY ./ ./

RUN npm install 

CMD ["node", "server.js"]