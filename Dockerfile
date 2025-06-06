FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS test
ENV MONGODB_USERNAME test
ENV MONGODB_PASSWORD test

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]