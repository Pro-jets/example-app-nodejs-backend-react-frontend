FROM node:18-slim

WORKDIR /example-app-nodejs-backend-react-frontend

ENV NODE_OPTIONS="--openssl-legacy-provider" \
    HOST=0.0.0.0 \
    PORT=3000

COPY package*.json ./

RUN npm install 

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]

