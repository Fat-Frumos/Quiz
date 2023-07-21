FROM python:2.7-slim  
  
WORKDIR /app
  
ADD . /app
  
RUN sed -i -e 's/:\/\/(archive.ubuntu.com\|security.ubuntu.com)/old-
releases.ubuntu.com/g' /etc/apt/sources.list && apt-get update -y && apt-get
install -y wget && wget
https://github.com/jwilder/dockerize/releases/download/v0.1.0/dockerize-linux-
amd64-v0.1.0.tar.gz && tar -C /usr/local/bin -xzvf dockerize-linux-
amd64-v0.1.0.tar.gz  
  
CMD ["docker-compose", "build", "--no-cache"]  
  
CMD ["docker-compose", "push"]  
  
CMD ["docker-compose", "up"]  
