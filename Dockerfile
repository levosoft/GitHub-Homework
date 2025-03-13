# Alapértelmezett Nginx image
FROM nginx:alpine

# Locale beállítása UTF-8-ra
RUN apk update && apk add --no-cache locales && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

# Az index.html fájl másolása
COPY index.html /usr/share/nginx/html/index.html

# 80-as port megnyitása
EXPOSE 80
