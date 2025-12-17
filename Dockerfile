FROM nginx:1.25-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html/

RUN rm -f /usr/share/nginx/html/Dockerfile && \
    rm -f /usr/share/nginx/html/nginx.conf && \
    rm -f /usr/share/nginx/html/.dockerignore && \
    rm -f /usr/share/nginx/html/docker-compose.yml

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
