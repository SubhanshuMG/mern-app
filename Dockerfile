FROM node:10.16-alpine

WORKDIR /usr/src/app

# Install Dependencies
COPY package*.json ./

RUN npm install 

# Copy app source code
COPY . .

# Exports
EXPOSE 5000

CMD ["npm","start"]
