FROM registry.cn-shenzhen.aliyuncs.com/haroldfinch/node:22.11.0-bookworm-slim

RUN npm config set registry https://registry.npmmirror.com

RUN npm install -g create-react-app

WORKDIR /app
