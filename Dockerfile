# syntax=docker/dockerfile:1

FROM node:18-alpine
ENV NODE_ENV=production
ENV ELASTIC_APM_SERVICE_NAME=node-llm-proxy

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

EXPOSE 3000 3000

CMD ["npm", "start"]
