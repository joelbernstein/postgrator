FROM node
ENV NODE_ENV=testing
WORKDIR /app
COPY package.json package-lock.json /app/
RUN set -ex ; npm ci
COPY . /app/
CMD bash -c 'sleep 30 ; exec npm test'
