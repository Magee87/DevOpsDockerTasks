#!/bin/bash

github_repo=$1
docker_repo=$2

# Clone
git clone "https://github.com/${github_repo}.git"
cd $(basename "$github_repo")


# Find 
dockerfile=$(find . -type f -name "Dockerfile" | head -n 1)
if [ -z "$dockerfile" ]; then
  echo "FAIL: Dockker file not found"
  exit 1
fi


docker build -t "$docker_repo" -f "$dockerfile" .

docker login
docker push "$docker_repo"


# and u can run it with -->  ./builder.sh mluukkai/express_app mluukkai/testing
