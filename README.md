# docker-example
Example docker project using Node.JS, TypeScript, and a Dockerfile

## Image
[Docker image webpage](https://hub.docker.com/r/scottpageusmc/docker-example)

## Running a container with this image
Let's say I want to run a container with this image on port 80 of my host machine OS.  By default the Node.JS express server is listening on port 30000 inside of the container, unless you change that port in the src/index.ts file.

For this scenario, you'd run this command:
```docker run -it -d -p 80:30000 scottpageusmc/docker-example:latest```

Make sure your ISP modem, and any routers in the path to that modem, have the port on the left of the port argument ```-p 80:30000```, port 80 in this case, open and forwarded to the IP of the machine you're runnning the container on.
