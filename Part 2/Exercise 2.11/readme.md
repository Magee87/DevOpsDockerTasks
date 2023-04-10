# Docker Simple Web-server
This is a sample website that demonstrates how to use Docker to create a development environment for a web project. The website uses an Alpine-based  and Node.js.

## Files
**Dockerfile**: This file contains the Docker configuration for the web server. It specifies the base image, sets the working directory, and copies the project files into the container.

**docker-compose.yml**: This file defines the services for the project, including the web server and the Node.js application. It also specifies the ports to expose and the volume mapping.

**server.js** This file defines html directory as static and it fetch files from that folder. and start server with index.html file.

**index.html**: This is the HTML content for the sample website, which explains how the development environment was created using Docker.

**style.css**: This CSS file gives little boost so example site looks better 

*The code is also commented in the files, which describe a little what each step does. except for the html/css file, which is only intended for example.*


## Usage:

To run the website, first ensure that you have Docker and Docker Compose installed on your system. Then, download this project directory and run the following command:


### Project folder
navigate to folder with files on this directory.
*for windows users - go to directory click address bar on top of window and write cmd, press enter to open cmd to that folder address.*

### create a new package.json
npm init -y


### Install the express package
npm install express


### time to put docker up
docker-compose up



### navigate to:
http://localhost:3000/


*thats it, u should see my example page. =)*


### for next step:
you can modify html folder content and index.html file to your own.
server.js is also needed to modify in some cases.

## Credits
This sample project was created by Jesse K. 
