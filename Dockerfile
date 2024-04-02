# Basic this the orginal files
FROM node:lts-slim

WORKDIR /usr/app
COPY ./package.json .
COPY ./tsconfig.json .
RUN npm install
RUN npm install -g ts-node typescript
COPY ./src ./src

CMD ["ts-node", "./src/index.ts"]
