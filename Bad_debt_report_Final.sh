#!/bin/bash
echo "Before_ALL_Market_file" >>/home/sathish/All_final_Result.txt
cd /home/sathish/Bad_Final_data
typeset -i Z_FILE_COUNT=0
Z_FILE_COUNT=$(ls *.txt | wc -l)
echo "`date +%D` :Before_ALL_Market_file_Total_count: $Z_FILE_COUNT " >>/home/sathish/All_final_Result.txt

##OLD_FILES_REMOVAL##

rm -rf *.txt

echo "ALL_OLD_files_removed" >>/home/sathish/All_final_Result.txt

##Fille_collection_all_Markets##

echo "Process_started $(date)" >>/home/sathish/All_final_Result.txt
cd /home/sathish/virginksa/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :KSA Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/telecelzw/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :TELECELZIM Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airteltz/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :AIRTELTZ Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelbf/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :AIRTELBF Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelcg/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :AIRTELCGB Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelmw/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :AIRTELMW Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/moovne/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :MOOVNE Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelgb/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :AIRTEL_GB Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/mci/
cat Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :MCI-IRAN Received: " >>/home/sathish/All_final_Result.txt

#####END###
echo "------------------AFTER_ALL_Market_file---------------------------------" >>/home/sathish/All_final_Result.txt
cd /home/sathish/Bad_Final_data
typeset -i Z_FILE_COUNT1=0
Z_FILE_COUNT1=$(ls *.txt | wc -l)
cd /home/sathish/Bad_Final_data_1/
rm -rf Final_Actual_outstanding.txt Final_Total_Principal_borrowed.txt Final_Total_Principal_Paid.txt
echo "`date +%D` :AFTER_ALL_Market_file_Total_count: $Z_FILE_COUNT " >>/home/sathish/All_final_Result.txt
sshpass -p "acs!@#comza" scp -r sathish@192.168.100.5:/home/sathish/Bad_Final_data/*.txt /home/sathish/Bad_Final_data_1
echo "ALL FILE RECEIVED FROM VPN5"
cd /home/sathish/Bad_Final_data_1
cat Final_Actual_outstanding.txt >>/home/sathish/Bad_Final_data/Final_Actual_outstanding.txt
cat Final_Total_Principal_borrowed.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_borrowed.txt
cat Final_Total_Principal_Paid.txt >>/home/sathish/Bad_Final_data/Final_Total_Principal_Paid.txt
echo "`date +%D` :VPN4 AND VPN 5 Final_data_Received: " >>/home/sathish/All_final_Result.txt

mysql -u reports -preports dailyreports -e "source /home/sathish/Bad_db.txt"

mysql -u reports -preports dailyreports -e "source /home/sathish/management_report.sh"
##END###

exit 0


