# Jenkins Backup Script

This repository contains a bash script to take a backup of Jenkins.

## Prerequisites

Before using this backup script, ensure you have the following prerequisites installed and configured:

1. **Jenkins**: Ensure Jenkins is installed and running on your server. This script assumes Jenkins is installed at the default location `/var/lib/jenkins`, but you can modify the `JENKINS_HOME` variable in the script if your installation is at a different location.

2. **Systemd (optional)**: If you are using Systemd to manage services on your server, ensure you have appropriate permissions to stop and start the Jenkins service. If not, you may need to adjust the script accordingly to stop and start Jenkins using alternative methods.

## Usage

1. Clone this repository to your local machine:

   $ git clone https://github.com/NashTech-Labs/backup_script_for_jenkins/

2. Navigate to your repo:
   
   $ cd backup_script_for_jenkins

3. Run the backup script:

   $ ./jenkins_backup.sh
      

## Understanding how it works:

    - The script first stops the Jenkins service to ensure data consistency during backup.
    - It then creates a backup directory (if it doesn't exist already) and archives the Jenkins data directory (`/var/lib/jenkins` by default) into a compressed file (`jenkins_backup_<timestamp>.tar.gz`).
    - After the backup is created, the Jenkins service is started again.
