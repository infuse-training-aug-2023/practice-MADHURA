
FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install express

COPY . .

EXPOSE 3001

CMD [ "node", "app.js" ]
