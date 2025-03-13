# Nginx alapú Docker image létrehozása
FROM nginx:latest

# Egyedi index.html oldal létrehozása
RUN echo '<h1>DevOps Homework by: Lukács Levente</h1>' > /usr/share/nginx/html/index.html
