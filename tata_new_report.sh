sshpass -p "acs/t4t4/" scp -P 2022 -r sathish@tatain-db1a:/home/sathish/tata/ /home/sathish/

mysql -u reports -preports dailyreports -e "source /home/sathish/tata_db_in.txt"

