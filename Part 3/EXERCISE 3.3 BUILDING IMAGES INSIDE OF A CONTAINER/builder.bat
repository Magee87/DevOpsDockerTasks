REM This is for Windows version so it need to be named builder.bat

@echo off


set github_repo=%1
set docker_repo=%2

REM Clone 
git clone "https://github.com/%github_repo%.git"
cd %github_repo%

REM Find dockerfile
for /r %%f in (Dockerfile) do (
  set dockerfile=%%f
  goto build
)
echo FAIL: Dockker file not found
exit /b 1


:build
docker build -t %docker_repo% -f %dockerfile% .

docker login

docker push %docker_repo%


REM run it with builder.bat mluukkai/express_app mluukkai/testing