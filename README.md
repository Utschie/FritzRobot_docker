# FritzRobot_docker

## Description
The rosmaster and the nodes are run on the docker

build and start the nodes
```
cd ./docker
docker-compose up -d
```
stop the nodes
```
cd ./docker
docker-compose down
```
### 2023-11-08 update
modified the Dockerfile. Since Nvidia Jetson based on arm64, therefore the image should be built from ros's arm64 image.
### 2023-11-06 update

automatically starts nodes in pkg fritzrobot_serial and fritzrobot_control.
