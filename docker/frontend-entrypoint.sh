#!/bin/sh
# 用环境变量替换 nginx 配置中的 BACKEND_URL 占位符
BACKEND_URL=${BACKEND_URL:-http://localhost:8080}
sed -i "s|BACKEND_URL|${BACKEND_URL}|g" /etc/nginx/conf.d/default.conf
exec nginx -g "daemon off;"
