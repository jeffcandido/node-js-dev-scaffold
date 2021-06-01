FROM node:14.16.0-alpine
WORKDIR /home/user/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN apk add --no-cache --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python && \
  npm install --quiet node-gyp@7.1.2 typescript ts-node-dev ts-node eslint -g

COPY . /home/user/app
