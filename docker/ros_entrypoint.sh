#!/bin/bash
set -e

source "/opt/ros/$ROS_DISTRO/setup.bash"
source /app/ros2_ws/install/setup.bash

#autocompletion

echo 'source "/opt/ros/$ROS_DISTRO/setup.bash"' >> ~/.bashrc
echo 'source "/usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash"' >> ~/.bashrc

exec "$@"