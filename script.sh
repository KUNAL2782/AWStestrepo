#!/bin/bash
# script.sh - Simple deployment test script for CodeDeploy

# Make sure the target folder exists
mkdir -p /home/ec2-user/testhelloworld

# Create a test file to confirm deployment
echo "Hello, this file was created by CodeDeploy on $(date)" > /home/ec2-user/testhelloworld/deployed.txt

# Optional: move your index.html into the web root (if you installed Apache)
if [ -f /home/ec2-user/testhelloworld/index.html ]; then
    sudo cp /home/ec2-user/testhelloworld/index.html /var/www/html/
fi

echo "Deployment script executed successfully."
