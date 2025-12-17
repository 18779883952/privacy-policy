# 基础镜像不变
FROM nginx:alpine

# 拷贝所有 .html 文件到 Nginx 默认目录
COPY *.html /usr/share/nginx/html/

# 暴露端口、启动 Nginx 不变
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
