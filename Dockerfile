FROM node:12.19.0-alpine3.10

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install 

COPY . .

EXPOSE 4000

CMD ["npm", "start"]