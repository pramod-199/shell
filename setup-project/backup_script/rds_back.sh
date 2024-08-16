#!/bin/bash

set -e
host="database.c18eesikq9io.ap-south-1.rds.amazonaws.com"
user="admin"
password="yJI8FpPrR18XciU1dxRB"
port="3306"
db_name="aquigen"
backup_dir="/home/ubuntu/back_mysql/"
DATE=$(date +%d-%m-%y_%H-%M-%S)
log_file="/home/ubuntu/back_mysql/logfile${DATE}.log"
backup_file="${backup_dir}aquigen$(date +%d-%m-%Y).sql"

sudo mkdir -p $(dirname ${backup_dir})


# Define color codes
green='\033[0;32m'
red='\033[0;31m'
nocolor='\033[0m'

echo -e "${green}Backup of database ${db_name} at ${DATE}${nocolor}" | sudo tee -a ${log_file}
sudo mysqldump -h ${host} -P ${port} -u ${user} -p${password} ${db_name} > ${backup_file}

if [[ $? -eq 0 ]]
then   
    echo -e "${green}Backup done sucessfully for ${db_name} at ${DATE}${nocolor}" tee -a "${log_file}"
else 
    echo -e "${red}Backup failed plase check log file${nocolor} " | tee -a "${log_file}"
fi 

sudo find ${backup_dir} -type f -name "*.sql" -exec -mtime +7 rm -f {} \;

echo -e "${green}Backup script finished at ${DATE}${nocolor}" | tee -a "${log_file}" 