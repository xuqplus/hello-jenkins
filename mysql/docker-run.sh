docker rm -f mysql
docker run -itd --name mysql --restart always -p 3306:3306 -e MYSQL_DATABASE=test_blog -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_USER=test -e MYSQL_PASSWORD=123456 mysql:5.7
