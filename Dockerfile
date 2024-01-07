# 指定基础镜像
FROM golang:1.20-alpine

# 设置工作目录
WORKDIR /app

# 将代码复制到容器中
COPY . .

# 构建应用程序(设置代理)
RUN go env -w GOPROXY=https://goproxy.cn && \
    go build -o server .

# 设置环境变量
ENV NAME World

# 设置容器启动命令，只出现一次且必须是最后一个命令
CMD ["./server"]

# 暴露 HTTP 端口
EXPOSE 8080