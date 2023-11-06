FROM osrf/ros:noetic-desktop-full
USER root
ENV user=jsy
ENV password=jetson
RUN mkdir /home/${user} \
    && useradd -rm -d /home/${user} -s /bin/bash  ${user} \
    && adduser ${user} sudo \
    && echo "${user}:${password}" | chpasswd \
    && echo "jsy ALL = NOPASSWD: ALL" >> /etc/sudoers \
    && ln -s /usr/bin/empy3 /usr/bin/empy \
    && apt-get update && apt-get install -y \
       ros-noetic-serial \
       ros-noetic-teleop-twist-joy \
       ros-noetic-joy

COPY ./  /home/${user}/FritzRobot_docker
RUN chmod -R a+x /home/${user}/FritzRobot_docker
USER ${user}
WORKDIR /home/${user}
ENTRYPOINT ["sudo", "bash","./FritzRobot_docker/ros_entrypoint.sh"]


