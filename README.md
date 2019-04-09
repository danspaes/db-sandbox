The targeted machine needs to have docker, docker-compose and docker-machine installed. 
This environment has the following databases:

[Mysql 8.0](https://hub.docker.com/_/mysql) \
[Redis 5.0.3](https://hub.docker.com/_/redis)\
[Neo4J 3.5.3](https://hub.docker.com/_/neo4j) \
[Mongo 4.0.5](https://hub.docker.com/_/mongo) \
[Cassandra 3.11](https://hub.docker.com/_/cassandra) 

[Mongo Express 0.49](https://hub.docker.com/_/mongo-express) 

Start the environment with docker-compose up -d \
Open a browser and type “localhost:8081” to validate if your mongo-express instance is up and running \
Open a browser and type “localhost:8888” to validate if your jupyter notebook is up and running \
Open a browser and type “localhost:7674” to validate if your neo4j is up and running 
