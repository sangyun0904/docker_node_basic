# 베이스 이미지 명시 
FROM node:10 

WORKDIR /usr/src/app

#COPY ./ ./
#
#RUN npm install 
# 위처럼 작성하면 소스코드만 변경하고 사용하는 모듈에는 변화가 없을 때에도
# npm install 을 할때 cache된 데이터를 활용하지 않고 전부 다시 다운받는다 

COPY package.json ./

RUN npm install 

COPY ./ ./ 

CMD ["node", "server.js"]