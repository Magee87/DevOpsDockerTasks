
## builder.bat

is for windows users like me. it look for dockerfile and then it jumps to :build part when it found that dockerfile.
there can be a mistake if it downloaded to folder where is multiple folders and dockerfiles.

Also you need to have access "git" command. You cant access git command always if you are using cmd on windows. you need to first add PATH to git. it can be tricky sometimes. 

run it with **builder.bat mluukkai/express_app mluukkai/testing

## builder.sh

i also created sh script what clone directory from github and find a dockerfile. and build it and push it to docker hub.


You can run it with **builder.sh mluukkai/express_app mluukkai/testing