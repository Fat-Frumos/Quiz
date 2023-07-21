FROM docker/compose:1.29.2

COPY docker-compose.yml /app/docker-compose.yml

WORKDIR /app

CMD ["docker-compose", "up"]
