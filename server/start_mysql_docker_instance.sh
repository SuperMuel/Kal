docker network create kal;
docker run -p 3306:3306 -d --network kal --network-alias mysql -v kal-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=supermuel  -e MYSQL_DATABASE=kal mysql:5.7