#!/bin/bash
ROS_PATH="/home/jetson/catkin_ws"
USER="jetson"
PASSWORD="jetson"
echo ${PASSWORD} | sudo chmod 777 /dev/ttyACM0
echo ${PASSWORD} | sudo chmod -R 777 /dev/input/
sudo chown ${USER}: -R /home/${USER}/
source /opt/ros/noetic/setup.bash
cd /home/${USER}/catkin_ws;
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
source ${ROS_PATH}/devel/setup.bash
roslaunch fritzrobot_control init.launch #需要前台运行一个进程，否则会container会自动退出
