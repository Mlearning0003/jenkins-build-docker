From nginx:latest
RUN sed -i 's/nginx/morad/g' /usr/share/nginx/html/index.html
EXPOSE 80
