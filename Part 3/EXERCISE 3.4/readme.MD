
## USING

Build it:
docker build -t YourImageName . 

You can run this using line:
docker run -e DOCKER_USER=YourUserNameToDocker -e DOCKER_PWD=YourPasswordToDocker -v //var/run/docker.sock:/var/run/docker.sock YourImageName mluukkai/express_app DockerUsername/NameForImage

## TIP

This is created to work with windows users.
dos2unix removes extra line endings what windows was creating end of every line  "^M"