#!/bin/bash
begin=$(date +"%s")
rm -rf /home/sathish/All_final_Result.txt

echo "`date +%D`:Before_ALL_Market_file" $begin >>/home/sathish/All_final_Result.txt
cd /home/sathish/Final_data
typeset -i Z_FILE_COUNT=0
Z_FILE_COUNT=$(ls *.txt | wc -l)
echo "`date +%D`:Before_ALL_Market_file_Total_count: $Z_FILE_COUNT " >>/home/sathish/All_final_Result.txt

##OLD_FILES_REMOVAL##

rm -rf *.txt

echo "ALL_OLD_files_removed" >>/home/sathish/All_final_Result.txt

##Fille_collection_all_Markets##

echo "Process_started $(date)" >>/home/sathish/All_final_Result.txt
cd /home/sathish/tigorw/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :TIGO_RWANDA Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/virginksa/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :KSA Received: " >>/home/sathish/All_final_Result.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cd /home/sathish/telecelzw/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :TELECELZIM Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airteltz/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :AIRTELTZ Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelbf/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :AIRTELBF Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelcg/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :AIRTELCGB Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelmw/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :AIRTELMW Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/tata/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
#cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
#cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
#cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
echo "`date +%D` :TATA Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/moovne/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :MOOVNE Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/airtelgb/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :AIRTEL_GB Received: " >>/home/sathish/All_final_Result.txt
cd /home/sathish/mci/
cat unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat avance.txt >>/home/sathish/Final_data/Final_advance.txt
cat payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat request.txt >>/home/sathish/Final_data/Final_request.txt
cat daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat 7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat 1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :MCI-IRAN Received: " >>/home/sathish/All_final_Result.txt

#cd /home/sathish/BI_checklist/
#cat checklist.txt >>/home/sathish/Final_data/Final_checklist.txt

#####END###
echo "------------------AFTER_ALL_Market_file---------------------------------" >>/home/sathish/All_final_Result.txt
cd /home/sathish/Final_data
typeset -i Z_FILE_COUNT1=0
Z_FILE_COUNT1=$(ls *.txt | wc -l)
echo "`date +%D` :AFTER_ALL_Market_file_Total_count: $Z_FILE_COUNT " >>/home/sathish/All_final_Result.txt
sshpass -f "/home/sathish/pass" ssh -x root@192.168.100.5 'sh /home/sathish/final.sh'
sshpass -p "acs!@#comza" scp -r -P20022 sathish@192.168.100.5:/home/sathish/Final_data/ /home/sathish/Final_data_1
#sshpass -p "acs!@#comza" scp -r -P20022 sathish@192.168.100.5:/home/sathish/airtelrw/megapromo.txt /home/sathish/megapromo/megapromo.txt
#sshpass -p "acs!@#comza" scp -r -P20022 sathish@192.168.100.5:/home/sathish/airtelrw/megapromo_offer.txt /home/sathish/megapromo/megapromo_offer.txt
echo "ALL FILE RECEIVED FROM VPN5"
cd /home/sathish/Final_data_1/Final_data/
cat Final_unique.txt >>/home/sathish/Final_data/Final_unique.txt
cat Final_daily_unique.txt >>/home/sathish/Final_data/Final_daily_unique.txt
cat Final_advance.txt >>/home/sathish/Final_data/Final_advance.txt
cat Final_payments.txt >>/home/sathish/Final_data/Final_payments.txt
cat Final_request.txt >>/home/sathish/Final_data/Final_request.txt
cat Final_daily_uniq.txt >>/home/sathish/Final_data/Final_daily_uniq.txt
cat Final_month_uniq.txt >>/home/sathish/Final_data/Final_month_uniq.txt
cat Final_Payment_wise.txt >>/home/sathish/Final_data/Final_Payment_wise.txt
cat Final_wrong_payment_records.txt >>/home/sathish/Final_data/Final_wrong_payment_records.txt
cat Final_checklist.txt >>/home/sathish/Final_data/Final_checklist.txt
cat Final_7day_Payment.txt >>/home/sathish/Final_data/Final_7day_Payment.txt
cat Final_hourly_trend.txt >>/home/sathish/Final_data/Final_hourly_trend.txt
cat Final_same_day_Pay.txt >>/home/sathish/Final_data/Final_same_day_Pay.txt
cat Final_1day_Payment.txt >>/home/sathish/Final_data/Final_1day_Payment.txt
cat Final_mhourly_trend.txt >>/home/sathish/Final_data/Final_mhourly_trend.txt
cat Final_phourly_trend.txt >>/home/sathish/Final_data/Final_phourly_trend.txt
cat Final_mphourly_trend.txt >>/home/sathish/Final_data/Final_mphourly_trend.txt
echo "`date +%D` :Moov_BJ Received: " >>/home/sathish/All_final_Result.txt
echo "`date +%D` :MOOV TOGO Received: " >>/home/sathish/All_final_Result.txt
echo "`date +%D` :AIRTEL_RW Received: " >>/home/sathish/All_final_Result.txt
echo "`date +%D` :AIRTELDRC Received: " >>/home/sathish/All_final_Result.txt
echo "`date +%D` :OMAN Received: " >>/home/sathish/All_final_Result.txt
echo "`date +%D` :MALITEL Received: " >>/home/sathish/All_final_Result.txt
echo "`date +%D` :VPN4 AND VPN 5 Final_data_Received: " >>/home/sathish/All_final_Result.txt

##END###



#mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"


currenttime=$(date +%H:%M)
   if [[ "$currenttime" > "23:00" ]] || [[ "$currenttime" < "04:30" ]]; then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in1.txt"
	echo "only_two_files_query $(date)" >>/tmp/outmsg.txt

  elif [ `date +%H` = "05" ];then 

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
	echo "all_files_query $(date)" >>/tmp/outmsg.txt

  elif [ `date +%H` = "08" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt

  elif [ `date +%H%M` = "0930" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt
   
  elif [ `date +%H%M` = "1030" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt


elif [ `date +%H%M` = "1130" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt

elif [ `date +%H%M` = "1300" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt

  elif [ `date +%H%M` = "1430" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt

elif [ `date +%H%M` = "1630" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt


  elif [ `date +%H` = "19" ];then

     mysql -u reports -preports dailyreports -e "source /home/sathish/db_in.txt"
        echo "all_files_query $(date)" >>/tmp/outmsg.txt
else 
 mysql -u reports -preports dailyreports -e "source /home/sathish/db_in1.txt"
        echo "only_two_files_query $(date)" >>/tmp/outmsg.txt


fi

if [ `date +%d` -le "07" ];then 
mysql -u reports -preports dailyreports -e "source /home/sathish/paymnets_last.txt"
echo "last_files_query $(date)" >>/tmp/outmsg.txt
else 
#mysql -u reports -preports dailyreports -e "source /home/sathish/paymnets_last.txt"
mysql -u reports -preports dailyreports -e "source /home/sathish/paymnets_first.txt"
echo "first_files_query $(date)" >>/tmp/outmsg.txt

fi


#sshpass -p "acs/t4t4/" scp -r sathish@10.169.1.18:/home/sathish/*.sql /home/sathish/BI_checklist/
#mysql -u reports -preports dailyreports --execute="source /home/sathish/BI_checklist/alert.sql;\q"
#mysql -u reports -preports dailyreports --execute="source /home/sathish/BI_checklist/alert1.sql;\q"
#mysql -u reports -preports dailyreports --execute="source /home/sathish/BI_checklist/alert2.sql;\q"
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) seconds elapsed for Script Execution." $termin>>/home/sathish/All_final_Result.txt

exit 0


