WORKDIR /app
COPY package*.json ./

# Add this line to bypass the HOME directory requirement
RUN npm config set cache /tmp --global

RUN npm install
COPY . .
CMD ["node", "index.js"]
