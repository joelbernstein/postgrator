FROM node
ENV NODE_ENV=testing
WORKDIR /app
COPY package.json package-lock.json /app
RUN set -ex ; npm install
COPY . /app
CMD npm test
