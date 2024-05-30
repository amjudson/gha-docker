FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster-01.sxdmleh.mongodb.net
ENV MONGODB_USERNAME amjudson
ENV MONGODB_PASSWORD zCUSVWq8GkJJcfGh

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
