FROM node:lts-alpine

ADD . .

RUN npm install && \
npm install grunt-cli -g && \
grunt

ENV WS_SECRET=secret

CMD ["npm", "start"]
