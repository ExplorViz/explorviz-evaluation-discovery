#!/bin/bash

echo "Starting agent tomcat"
explorviz-discovery-agent/bin/startup.sh &

echo "Starting target tomcat"
apache-tomcat/bin/startup.sh &

echo "Starting kiekerSampleApp"
cd kiekerSampleApp && ./run.sh &

echo "keeping container alive"
tail -f /dev/null