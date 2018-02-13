# dispatcher-reverse-2

Tutorial
---------

[Docker compose : AEM Dispatcher reverse proxy with multiple containers](https://www.linkedin.com/in/perezpardojc/) 

### Cleanup process in your docker installation

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rm $(docker ps -a -f status=exited -q)
docker rmi $(docker images -a -q)

others:

docker system prune -a -f
docker images purge
docker images -f dangling=true

```

### Build base image

```
docker build -t perezpardojc/base ./base
docker-compose build
docker-compose build --no-cache 

docker-compose up
docker-compose up -d
docker-compose up -d --no-build
docker-compose up --force-recreate 

docker-compose down
```

### Readay to test

You cal curl localhost