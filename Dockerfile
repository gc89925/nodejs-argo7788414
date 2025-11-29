FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

ENV PORT=3000
ENV SERVER_PORT=3000
ENV SUB_PATH=1029

CMD ["node", "index.js"]
