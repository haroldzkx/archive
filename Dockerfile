FROM registry.cn-shenzhen.aliyuncs.com/haroldfinch/node:22.11.0-bookworm-slim

# RUN npm config set registry https://registry.npmmirror.com

# RUN npm install -g create-react-app

WORKDIR /app

# 安装 create-react-app 工具
RUN npm install -g create-react-app

# 使用 create-react-app 创建一个新的 React 项目
# 请将 `my-app` 替换为你希望创建的项目名称
RUN npx create-react-app my-app

# 设置工作目录为刚刚创建的 React 项目目录
WORKDIR /app/my-app

# 先不执行启动命令，仅构建镜像，项目依赖安装会在运行时进行
# 暴露 React 默认使用的 3000 端口
EXPOSE 3000

# 默认命令为空，容器启动时不会立即运行 React 项目
CMD ["echo", "React development environment is ready."]

