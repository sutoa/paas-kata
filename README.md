To Dockerize a simple Java application

1. Create a Hello World web service app using SpringBoot
2. Run gradle build to create the jar
3. Create a docker image - from project root folder
        docker build -t suto/simple-web-service .
4. Deploy the image in the default Docker Machine that's already running. Port 9000 is the end point of the exposed web service
        docker run -p 9000:9000 -t suto/simple-web-service:latest
4. Find out the IP of the Docker host. This is because Docker server side has to run on Linux. On Mac, we need to run a Linux VM to host it. ªThe exposed port is on the VM, not on the localhost of the Mac itself
        docker-machine ip
5. Check out the service from a browser, go to http://192.168.99.100:9000/greeting