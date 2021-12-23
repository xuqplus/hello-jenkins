docker rm -f redis
docker run -itd --name redis --restart always -p 6379:6379 redis:6-alpine
