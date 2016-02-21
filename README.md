1. Run gradle build to create the jar
2. create the docker image
    - from project root, do
        docker build -t suto/simple-web-service .
3. deploy to docker host
    docker run -p 9000:9000 -t suto/simple-web-service:latest
4. find out the IP of the docker host
    docker-machine ip
5. from browser, go to http://192.168.99.100:9000/greeting which contains the IP address