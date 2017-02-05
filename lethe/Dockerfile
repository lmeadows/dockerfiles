FROM node:alpine

RUN apk --no-cache add --virtual=.run-deps ffmpeg && \
    apk --no-cache add --virtual=.build-deps git python build-base && \
    git clone https://github.com/meew0/Lethe.git /app/ && \
    cd /app && \
    rm -rf .git && \
    npm install && \
    apk del .build-deps

WORKDIR /app
ENTRYPOINT ["node", "lethe.js"]
