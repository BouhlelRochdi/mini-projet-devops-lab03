FROM node:18 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN apt-get update && apt-get install -y apt
RUN npm install -g @angular/cli
RUN npm install
RUN npm run build
