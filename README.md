To Dockerize a simple Java application
======================================

* Create a Hello World web service app using SpringBoot
* Run gradle build to create the jar
* Create a docker image - from project root folder
    
        docker build -t suto/simple-web-service .
    
* Deploy the image in the default Docker Machine that's already running. Port 9000 is the end point of the exposed web service
    
        docker run -p 9000:9000 -t suto/simple-web-service:latest
    
* Docker server has to run on a Linux VM on MAC. Find its IP
    
        docker-machine ip
        192.168.99.100:9000
    
* Check out the web service 

        curl http://192.168.99.100:9000/greeting
        {"count":1,"msg":"Hello, world"}