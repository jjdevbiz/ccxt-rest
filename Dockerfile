FROM node:10.4.0-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh alpine-sdk python
RUN npm install -g https://github.com/jjdevbiz/ccxt-rest.git --unsafe-perm

RUN ln -s /usr/local/lib/node_modules/ccxt-rest/bin/www /usr/local/bin/ccxt-rest

ENV PORT 3000

EXPOSE 3000

CMD ["ccxt-rest"]
