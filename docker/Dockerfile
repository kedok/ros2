ARG ROS_DISTRO=foxy
FROM osrf/ros:${ROS_DISTRO}-desktop

SHELL ["/bin/bash", "-c"]

WORKDIR /app

COPY src ros2_ws/
RUN cd ros2_ws && source /opt/ros/${ROS_DISTRO}/setup.bash && colcon build

COPY docker/ros_entrypoint.sh /
RUN chmod +x /ros_entrypoint.sh

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]