# 使用轻量级Nginx镜像作为基础（体积小，适合静态文件）
FROM nginx:alpine

# 将仓库中唯一的HTML文件复制到Nginx的默认网站目录
# 假设你的HTML文件名为index.html，如果是其他名字请修改这里
COPY index.html /usr/share/nginx/html/index.html

# 暴露80端口（Nginx默认使用80端口提供网页服务）
EXPOSE 80

# 容器启动时自动运行Nginx
CMD ["nginx", "-g", "daemon off;"]
