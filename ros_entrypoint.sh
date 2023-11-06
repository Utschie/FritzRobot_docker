#!/bin/bash
ROS_PATH="/home/jsy/catkin_ws"
USER="jsy"
PASSWORD="jetson"
echo ${PASSWORD} | sudo chmod 777 /dev/ttyACM0
sudo chown ${USER}: -R /home/${USER}/
source ${ROS_PATH}/devel/setup.bash
cd /home/${USER}/catkin_ws;
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
source ${ROS_PATH}/devel/setup.bash
roslaunch fritzrobot_control serial+joystick.launch #需要前台运行一个进程，否则会container会自动退出

