#!/bin/bash
sshpass -p "acs@123comza" scp -P 2022 -r sathish@airteltz-db1b:/home/sathish/airteltz/*.csv /home/sathish/daily_tz/
sshpass -p "acs/t4t4/" scp -r sathish@tigorw-1c:/home/sathish/tigorw/*.csv /home/sathish/Nots_reports/
cd /home/sathish/Nots_reports/
typeset -i Z_FILE_COUNT9=0

Z_FILE_COUNT9=$(ls *.csv | wc -l)

if [ "$Z_FILE_COUNT9" == "8" ];then

mv Contracting.csv Nots_Contracting_report_$(date +%d-%m-%Y).csv
mv Eligibility_status.csv Nots_Eligibility_status_$(date +%d-%m-%Y).csv
mv MSS_Distribution.csv Nots_MSS_Distribution_$(date +%d-%m-%Y).csv
mv Offer_Confirmation.csv Nots_Offer_Confirmation_$(date +%d-%m-%Y).csv
mv Payment.csv Nots_Payment_$(date +%d-%m-%Y).csv
mv Payment_sms.csv Nots_Payment_sms_$(date +%d-%m-%Y).csv
mv Push_the_offer.csv Nots_Push_the_offer_$(date +%d-%m-%Y).csv
mv daily_AirtelMoney_file_received_status.csv Daily_AirtelMoney_File_received_status_$(date +%d-%m-%Y).csv
zip Nots_Reports_$(date +%d-%m-%Y).zip *.csv
mv /home/sathish/Nots_reports/*.zip /home/acs/report_sending/reports/
else 
echo "`date +%D` :NOTS File Total_count: $Z_FILE_COUNT9" >>/home/sathish/Nots_reports/Error_log_$(date +%d-%m-%Y).txt
fi
rm -rf *.csv

cd /home/sathish/daily_tz/
typeset -i Z_FILE_COUNT9=0
Z_FILE_COUNT9=$(ls *.csv | wc -l)
if [ "$Z_FILE_COUNT9" == "3" ];then
mv Daily_productwise_report.csv Daily_productwise_report_$(date +%d-%m-%Y).csv
mv Daily_transactions.csv Daily_transactions_$(date +%d-%m-%Y).csv
mv Daily_transactions_report.csv Daily_ADV_PAY_transactions_$(date +%d-%m-%Y).csv
zip DAILY-AirtelTZ_Reports_$(date +%d-%m-%Y).zip *.csv
mv /home/sathish/daily_tz/*.zip /home/acs/report_sending/reports/
else
echo "`date +%D` :AIRTEL File Total_count: $Z_FILE_COUNT9" >>/home/sathish/Nots_reports/Error_log_$(date +%d-%m-%Y).txt
fi
rm -rf *.csv
exit 0
