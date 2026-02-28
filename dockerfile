# 1. You MUST define the base image first!
FROM node:20-slim

# 2. Now you can set the directory
WORKDIR /app

# 3. Copy files
COPY package*.json ./

# 4. Install and finish
RUN npm install
COPY . .

CMD ["node", "index.js"]
