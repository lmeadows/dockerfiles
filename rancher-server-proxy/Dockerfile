FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY healthcheck-81.conf /etc/nginx/conf.d/healthcheck-81.conf

RUN nginx -t -c /etc/nginx/nginx.conf
