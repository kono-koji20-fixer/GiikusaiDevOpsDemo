# Dockerfile
FROM node:14.4.0-alpine

RUN mkdir -p /app
WORKDIR /app

COPY . /app/
RUN npm install
RUN npm run build

EXPOSE 3000

ENV HOST=0.0.0.0

CMD [ "npm", "start" ]
