#!/bin/bash
 
################################################################
##   MySQL Database Backup Script 
################################################################
 
export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=`date +"%d%b%Y"`
 
################################################################
################## Update below values  ########################
 
DB_BACKUP_PATH='/backup/BI_maunal_report_bkp'
MYSQL_HOST='localhost'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_PASSWORD='abc!123'
DATABASE_NAME='dailyreports'
BACKUP_RETAIN_DAYS=7   ## Number of days to keep local backup copy
 
#################################################################
 
mkdir -p ${DB_BACKUP_PATH}/${TODAY}
echo "Backup started for database - ${DATABASE_NAME}"
 
 
mysqldump -h ${MYSQL_HOST} \
   -P ${MYSQL_PORT} \
   -u ${MYSQL_USER} \
   -p${MYSQL_PASSWORD} \
   ${DATABASE_NAME} | gzip > ${DB_BACKUP_PATH}/${TODAY}/${DATABASE_NAME}-${TODAY}.sql.gz
 
if [ $? -eq 0 ]; then
  echo "Database backup successfully completed"
else
  echo "Error found during backup"
  exit 1
fi
 
sshpass -p "acs!@#comza" scp -r ${DB_BACKUP_PATH}/${TODAY} root@10.169.1.22:/data/DBBACKUP/ 
shpass -p "acs!@#comza" scp -r /home/sathish/scripts root@10.169.1.22:/data/DBBACKUP/
##### Remove backups older than {BACKUP_RETAIN_DAYS} days  #####
 
DBDELDATE=`date +"%d%b%Y" --date="${BACKUP_RETAIN_DAYS} days ago"`
 
if [ ! -z ${DB_BACKUP_PATH} ]; then
      cd ${DB_BACKUP_PATH}
      if [ ! -z ${DBDELDATE} ] && [ -d ${DBDELDATE} ]; then
            rm -rf ${DBDELDATE}
      fi
fi
 
### End of script ####

