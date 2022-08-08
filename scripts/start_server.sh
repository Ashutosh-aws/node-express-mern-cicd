#!/bin/bash
cd /home/ubuntu/node-express-mern-cicd
sudo pm2 start app.js 
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c ssm:AmazonCloudWatch-ashutosh -s
sudo pm2 startup
sudo pm2 save
