#!/bin/bash
cd /home/sathish/Final_Airtel_Outstanding/

##OLD_FILES_REMOVAL##

rm -rf *.txt

##File_collection_all_Markets##

cd /home/sathish/airteltz/
cat outstanding0to30.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding0to30.txt
cat outstanding31to60.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding31to60.txt
cat outstanding61to90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding61to90.txt
cat outstandingGreaterThan90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstandingGreaterThan90.txt
cd /home/sathish/airtelcg/
cat outstanding0to30.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding0to30.txt
cat outstanding31to60.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding31to60.txt
cat outstanding61to90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding61to90.txt
cat outstandingGreaterThan90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstandingGreaterThan90.txt
cd /home/sathish/airtelmw/
cat outstanding0to30.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding0to30.txt
cat outstanding31to60.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding31to60.txt
cat outstanding61to90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding61to90.txt
cat outstandingGreaterThan90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstandingGreaterThan90.txt
cd /home/sathish/airtelgb/
cat outstanding0to30.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding0to30.txt
cat outstanding31to60.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding31to60.txt
cat outstanding61to90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding61to90.txt
cat outstandingGreaterThan90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstandingGreaterThan90.txt


#serverA_file_collection#

cd /home/sathish/Final_Airtel_Outstanding_A/

rm -rf Final_outstanding0to30.txt Final_outstanding31to60.txt Final_outstanding61to90.txt Final_outstandingGreaterThan90.txt

sshpass -p "acs!@#comza" scp -r sathish@192.168.100.5:/home/sathish/Final_Airtel_Outstanding/*.txt /home/sathish/Final_Airtel_Outstanding_A/

cd /home/sathish/Final_Airtel_Outstanding_A/
cat Final_outstanding0to30.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding0to30.txt
cat Final_outstanding31to60.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding31to60.txt
cat Final_outstanding61to90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstanding61to90.txt
cat Final_outstandingGreaterThan90.txt >>/home/sathish/Final_Airtel_Outstanding/Final_outstandingGreaterThan90.txt

mysql -u reports -preports dailyreports -e "source /home/sathish/airtel_outstanding.sh"

##END###

exit 0


