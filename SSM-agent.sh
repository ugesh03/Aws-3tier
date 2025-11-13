#!/bin/sh

#Author : Ugesh
#Script : Install SSM agent
#Version : 1.0
# userdata for session manager on Windows machine
#sudo dnf install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm

# userdata for session manager on Linux machine
# Region should be updated  // sudo dnf install -y https://s3.region.amazonaws.com/amazon-ssm-region/latest/linux_amd64/amazon-ssm-agent.rpm

sudo dnf install -y https://s3.us-east-2.amazonaws.com/amazon-ssm-us-east-2/latest/linux_amd64/amazon-ssm-agent.rpm  // US-East-1(region)

# start the SSM agent in machine
sudo systemctl start amazon-ssm-agent
sudo systemctl enable amazon-ssm-agent

#to check the status of the SSM-agent
sudo systemctl status amazon-ssm-agent
