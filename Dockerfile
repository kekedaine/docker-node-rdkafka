FROM node:14-alpine
LABEL desc="node:14-alpine + package for run rdkafka"
RUN apk add --no-cache bash g++ ca-certificates lz4-dev musl-dev cyrus-sasl-dev openssl-dev make python
RUN apk add --no-cache --virtual .build-deps gcc zlib-dev libc-dev bsd-compat-headers py-setuptools bash
RUN npm install pm2 -g