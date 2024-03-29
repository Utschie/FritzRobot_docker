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
### 2024-01-10 update
installed more packages and changed some folders' permission to 777
### 2023-12-28 update
added dockerfiles supporting both of x86_64 and arm64 
### 2023-12-10 update

share the host's ip and port

### 2023-11-11 update
added customized commands to ~/.bashrc.
```
alias start_container="docker-compose -f /home/jetson/FritzRobot_docker/docker/docker-compose.yml up -d"
alias enable_joystick="docker exec docker-ros-noetic-1 bash -c 'source /home/jetson/catkin_ws/devel/setup.bash && roslaunch fritzrobot_control joystick.launch' &"
alias stop_container="docker-compose -f /home/jetson/FritzRobot_docker/docker/docker-compose.yml down"
```

```
Commands:
 start_container: start roscore and serial communication
 enable_joystick: enable the xbox joystick
 stop_container: stop the rosnode
```
shown below

![avatar](./pictures/add%20customized%20commands.png)

### 2023-11-08 update
modified the Dockerfile. Since Nvidia Jetson based on arm64, therefore the image should be built from ros's arm64 image.
### 2023-11-06 update

automatically starts nodes in pkg fritzrobot_serial and fritzrobot_control.
