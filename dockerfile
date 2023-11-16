FROM node:18 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# RUN apt update
# RUN apt install nano
RUN npm install -g @angular/cli
RUN npm run start
# RUN npm run build


# FROM nginx:alpine
# COPY --from=build /app/dist/mini-projet-lab03 /usr/share/nginx/html