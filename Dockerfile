# syntax=docker/dockerfile:1
FROM node:19
ADD firstApp.js /
COPY package*.json ./
COPY . .

EXPOSE 8000
RUN npm install
RUN apt-get install curl
CMD ["node", "firstApp.js"]
#RUN "node firstApp.js"
