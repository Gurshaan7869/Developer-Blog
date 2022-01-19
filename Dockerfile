FROM  node:14

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . . 

ENV PORT=8080 NODE_ENV="production"

EXPOSE 8080

CMD ["npm", "start"]