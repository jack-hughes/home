FROM nginx:1.19.6-alpine
COPY ./index.html /usr/share/nginx/html
COPY ./assets /usr/share/nginx/html/assets
COPY ./nginx.conf /etc/nginx/conf.d
RUN rm /etc/nginx/conf.d/default.conf
EXPOSE 8181