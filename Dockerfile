FROM node:13-alpine

WORKDIR /app
COPY . ./
RUN NODE_ENV=production npm install --only=production
RUN npm run build

CMD npm start
