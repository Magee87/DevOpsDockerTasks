#!/bin/bash
echo " file found"
github_repo=$1
docker_repo=$2

# Clone
#git clone "https://github.com/${github_repo}.git"
git clone "https://github.com/${github_repo}"

echo $(basename "$github_repo")
cd $(basename "$github_repo")


# Find 
dockerfile=$(find . -type f -name "Dockerfile" | head -n 1)
if [ -z "$dockerfile" ]; then
  echo "FAIL: Dockker file not found"
  exit 1
fi


docker build -t "$docker_repo" -f "$dockerfile" .

docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"

docker push "$docker_repo"