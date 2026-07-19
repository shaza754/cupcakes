#!/bin/bash
# Stop Tomcat
sudo /opt/tomcat/bin/shutdown.sh

# Remove old app
sudo rm -rf /opt/tomcat/webapps/cupcakes*

# Copy new .war file from the folder where CodeDeploy places it
sudo cp /home/ec2-user/my-app/target/cupcakes.war /opt/tomcat/webapps/

# Start Tomcat
sudo /opt/tomcat/bin/startup.sh
