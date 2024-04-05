#!/bin/bash

# Variables
JENKINS_HOME=/var/lib/jenkins
BACKUP_DIR=/home/knoldus/jenkins_backup
DATE=$(date +%Y%m%d)
BACKUP_FILE="jenkins_backup_${DATE}.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Stop Jenkins
sudo systemctl stop jenkins

# Create backup
tar -czvf $BACKUP_DIR/$BACKUP_FILE -C $JENKINS_HOME .

# Start Jenkins
sudo systemctl start jenkins

echo "Backup created: $BACKUP_DIR/$BACKUP_FILE"

# Optionally, you can delete old backups to save space
# find $BACKUP_DIR -type f -name "jenkins_backup*" -mtime +7 -exec rm {} \;
