#!/bin/bash
ROS_PATH="/home/jetson/catkin_ws"
USER="jetson"
PASSWORD="jetson"
echo ${PASSWORD} | sudo chmod 777 /dev/ttyACM0
echo ${PASSWORD} | sudo chmod -R 777 /dev/input/
echo ${PASSWORD} | chmod -R 777 ~/catkin_ws/src/ros_astra_camera
sudo chmod -R 777 /dev/bus/usb
sudo chown ${USER}: -R /home/${USER}/
sudo chmod -R 777 /home/${USER}/catkin_ws/
source /opt/ros/noetic/setup.bash
cd /home/${USER}/catkin_ws;
catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python3
source ${ROS_PATH}/devel/setup.bash
cd cd ~/catkin_wk/src/ros_astra_camera/scripts
./create_udev_rules
roslaunch fritzrobot_control init.launch #需要前台运行一个进程，否则会container会自动退出
