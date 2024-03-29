Step 1

# Create the network called "asgard"
docker network create asgard


#Create dir for database data  
mkdir -p /opt/mysql
 
# Create MySQL container 
docker run -d \
    --name asgard-mysql \
    --network asgard \
    -e MYSQL_ROOT_PASSWORD="OuPfme45oAM6m6S8lqy4PQfxlYFlCnmPzyaloZ5Zw=" \
    -v /opt/mysql:/var/lib/mysql \
    -p 3306:3306 \
    mysql:8.0.12


# Create phpMyAdmin container
# 
# PMA_HOST is the IP or domain of the MySQL server,
# so we can use the MySQL container name as the domain
# cause the Docker network create the route as a DNS server.
docker run -d \
    --name asgard-phpmyadmin \
    --network asgard \
    -e PMA_HOST=asgard-mysql \
    -p 8080:80 \
    phpmyadmin/phpmyadmin:edge



  Acess for: http://localhost:8080/index.php