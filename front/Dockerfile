FROM node:21.7.1-alpine
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . ./
CMD ["npm", "run", "build"]