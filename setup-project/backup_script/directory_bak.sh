#!/bin/bash 
directory="/var/www/html/aquigen/"
bak_dir="/home/ubuntu/backups/main_dir/"
date=$(date +%d%m%y_%H%M%S)
date1=$(date +%d%m%y)
log="/logs/log_file${date1}.log"

# Define color codes
green='\033[0;32m'
red='\033[0;31m'
nocolor='\033[0m'


# Ensure log directory exists
mkdir -p $(dirname ${log})


echo -e "${green}Backup start for ${directory} at ${date}${nocolor}" | tee -a "${log} "
sudo tar -cvzf  ${bak_dir}aquigen_${date}.tar.gz ${directory} 
if [[ $? -eq 0 ]]
then
    echo -e "${green} Backup Done sucessfull${nocolor}" | tee -a "${log}" 
else 
    echo -e "${red} backup failed at ${date}" | tee -a "${log}"

fi 

# Optional: Remove backups older than 7 days
sudo find ${bak_dir} -type f -name "*.tar.gz" -mtime +7 -exec rm -f {} \; 

echo -e "${green}Backup script finished at $(date +%Y%m%d_%H%M%S)${nocolor}" | tee -a "${log}"

