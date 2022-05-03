FROM node:16.13.0

RUN apt-get update && \
  apt-get install -y \
  nodejs \
  ffmpeg \
  imagemagick \
  graphicsmagick \
  webp \
  chromium && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

RUN npm install
RUN npm i pm2 -g

CMD ["npm", "start"]
EXPOSE 6892
