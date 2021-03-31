FROM node:14.16.0-alpine
ENV NODE_ENV=development
WORKDIR /home/user/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN apk add --no-cache --virtual native-deps bash \
  g++ gcc libgcc libstdc++ linux-headers make python && \
  npm install --quiet node-gyp@7.1.2 typescript ts-node-dev ts-node eslint -g && \
  npm install --development --silent
COPY . /home/user/app
EXPOSE 3333
CMD ["npm", "run", "dev"]
