#!/bin/bash
# ----------------------------------------------------------------------
# ACS - Reportfiledownloader
# Location: /home/sathish/daily_VPN_File_dwonloader.sh
# Crontab entry: 45 * * * *  /home/sathish/daily_VPN_File_dwonloader.sh > /dev/null  2>&1
# ----------------------------------------------------------------------

echo "=================================================================="
echo "                    Reportfiledownloader"
echo "                  TODAY: `date '+%d/%m/%Y %H:%M:%S'`"
echo "                        Starting ............"
echo "=================================================================="

begin=$(date +"%s")

echo `date '+%Y-%m-%d %H:%M:%S'`": Starting Reportfiledownloader"

LOCKFILE="/var/run/dailyVPNFiledwonloader.pid"
SCRIPTDIR="/home/sathish/"
if [ -f $LOCKFILE ]
then
        OLDPID=`cat $LOCKFILE`
        COUNT=`ps $OLDPID | grep $OLDPID | wc -l`
        if [ "$COUNT" == "1" ]; then
                echo "instance already running on pid $OLDPID"
                exit -1;
        fi;
fi

echo $$ > $LOCKFILE
cd $SCRIPTDIR

rm -rf /home/sathish/reportmsg.txt
rm -rf /home/sathish/final_Result.txt
if [ `date +%H` = "08" ];then
##Tigo_Rwanda###
sshpass -p "acs/t4t4/" scp -r sathish@tigorw-1a:/home/sathish/tigorw/ /home/sathish/
sshpass -p "acs/t4t4/" scp -r sathish@tigorw-1c:/tmp/nots_sub_loan_data.csv /home/sathish/tigorw/
sshpass -p "acs/t4t4/" scp -r sathish@tigorw-1c:/home/sathish/tigorw/Payment.csv /home/sathish/tigorw/
echo "Tigo_Rwanda_data_received $(date)" >>/home/sathish/reportmsg.txt
##Virginksa###
sshpass -p "acs/t4t4/" scp -r sathish@virginksa-1a:/home/sathish/virginksa/ /home/sathish/
echo "Virgin_Ksa_data_received $(date)" >>/home/sathish/reportmsg.txt
##TelecelZiw###
sshpass -p "acs/t4t4/" scp -r sathish@telecelzw-db1a:/home/sathish/telecelzw/ /home/sathish/
echo "TelecelZiw_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelTZ###
sshpass -p "acs@123comza" scp -P 2022 -r sathish@airteltz-db1b:/home/sathish/airteltz/ /home/sathish/
echo "AirtelTZ_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelBF###
#sshpass -p "acs/t4t4/" scp -P 922 -r sathish@airtelbf-1b:/home/sathish/airtelbf/ /home/sathish/
#echo "AirtelBF_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelCGB###
sshpass -p "acs@123comza" scp -P 922 -r sathish@airtelcg-db1b:/home/sathish/airtelcg/ /home/sathish/
echo "AirtelCGB_data_received $(date)" >>/home/sathish/reportmsg.txt
##TATA_IND###
sshpass -p "acs/t4t4/" scp -P 2022 -r sathish@tatain-db1b:/home/sathish/tata/ /home/sathish/
echo "TATA_IND_data_received $(date)" >>/home/sathish/reportmsg.txt
##AIRTELMW###
sshpass -p "acs@123comza" scp -P 20022 -r sathish@airtelmw-db1a:/home/sathish/airtelmw/ /home/sathish/
echo "AIRTELMW_data_received $(date)" >>/home/sathish/reportmsg.txt
##MOOVNE###
sshpass -p "acs@123comza" scp -r sathish@moovne-1a:/home/sathish/moovne/ /home/sathish/
echo "MOOVNE_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelGB###
sshpass -p "acs/t4t4/" scp -P 9001 -r sathish@airtelga-1b:/home/sathish/airtelgb/ /home/sathish/
echo "AirtelGB_data_received $(date)" >>/home/sathish/reportmsg.txt

elif [ `date +%H%M` = "0930" ];then

##Tigo_Rwanda###
sshpass -p "acs/t4t4/" scp -r sathish@tigorw-1a:/home/sathish/tigorw/ /home/sathish/
sshpass -p "acs/t4t4/" scp -r sathish@tigorw-1c:/home/sathish/tigorw/*.csv /home/sathish/Nots_reports/
echo "Tigo_Rwanda_data_received $(date)" >>/home/sathish/reportmsg.txt
##Virginksa###
sshpass -p "acs/t4t4/" scp -r sathish@virginksa-1a:/home/sathish/virginksa/ /home/sathish/
echo "Virgin_Ksa_data_received $(date)" >>/home/sathish/reportmsg.txt
##TelecelZiw###
sshpass -p "acs/t4t4/" scp -r sathish@telecelzw-db1a:/home/sathish/telecelzw/ /home/sathish/
echo "TelecelZiw_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelTZ###
sshpass -p "acs@123comza" scp -P 2022 -r sathish@airteltz-db1b:/home/sathish/airteltz/ /home/sathish/
echo "AirtelTZ_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelBF###
#sshpass -p "acs/t4t4/" scp -P 922 -r sathish@airtelbf-1b:/home/sathish/airtelbf/ /home/sathish/
#echo "AirtelBF_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelCGB###
sshpass -p "acs@123comza" scp -P 922 -r sathish@airtelcg-db1b:/home/sathish/airtelcg/ /home/sathish/
echo "AirtelCGB_data_received $(date)" >>/home/sathish/reportmsg.txt
##TATA_IND###
#sshpass -p "acs/t4t4/" scp -P 2022 -r sathish@tatain-db1b:/home/sathish/tata/ /home/sathish/
#echo "TATA_IND_data_received $(date)" >>/home/sathish/reportmsg.txt
##AIRTELMW###
sshpass -p "acs@123comza" scp -P 20022 -r sathish@airtelmw-db1a:/home/sathish/airtelmw/ /home/sathish/
echo "AIRTELMW_data_received $(date)" >>/home/sathish/reportmsg.txt
##MOOVNE###
sshpass -p "acs@123comza" scp -r sathish@moovne-1a:/home/sathish/moovne/ /home/sathish/
echo "MOOVNE_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelGB###
sshpass -p "acs/t4t4/" scp -P 9001 -r sathish@airtelga-1b:/home/sathish/airtelgb/ /home/sathish/
echo "AirtelGB_data_received $(date)" >>/home/sathish/reportmsg.txt

else 
##Tigo_Rwanda###
sshpass -p "acs/t4t4/" scp -r -o ConnectTimeout=30 sathish@tigorw-1a:/home/sathish/tigorw/*hourly_trend.txt /home/sathish/tigorw/
echo "Tigo_Rwanda_data_received $(date)" >>/home/sathish/reportmsg.txt
##Virginksa###
sshpass -p "acs/t4t4/" scp -r -o ConnectTimeout=30 sathish@virginksa-1a:/home/sathish/virginksa/*hourly_trend.txt /home/sathish/virginksa/
echo "Virgin_Ksa_data_received $(date)" >>/home/sathish/reportmsg.txt
##TelecelZiw###
sshpass -p "acs/t4t4/" scp -r -o ConnectTimeout=30 sathish@telecelzw-db1a:/home/sathish/telecelzw/*hourly_trend.txt /home/sathish/telecelzw/
echo "TelecelZiw_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelTZ###
sshpass -p "acs@123comza" scp -P 2022 -r -o ConnectTimeout=30 sathish@airteltz-db1b:/home/sathish/airteltz/*hourly_trend.txt /home/sathish/airteltz/
echo "AirtelTZ_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelBF###
#sshpass -p "acs/t4t4/" scp -P 922 -r -o ConnectTimeout=30 sathish@airtelbf-1b:/home/sathish/airtelbf/*hourly_trend.txt /home/sathish/airtelbf/
#echo "AirtelBF_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelCGB###
sshpass -p "acs@123comza" scp -P 922 -r -o ConnectTimeout=30 sathish@airtelcg-db1b:/home/sathish/airtelcg/*hourly_trend.txt /home/sathish/airtelcg/
echo "AirtelCGB_data_received $(date)" >>/home/sathish/reportmsg.txt
##AIRTELMW###
sshpass -p "acs@123comza" scp -P 20022 -r -o ConnectTimeout=30 sathish@airtelmw-db1a:/home/sathish/airtelmw/*hourly_trend.txt /home/sathish/airtelmw/
echo "AIRTELMW_data_received $(date)" >>/home/sathish/reportmsg.txt
##MOOVNE###
sshpass -p "acs@123comza" scp -r -o ConnectTimeout=30 sathish@moovne-1a:/home/sathish/moovne/*hourly_trend.txt /home/sathish/moovne/
echo "MOOVNE_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelGB###
sshpass -p "acs/t4t4/" scp -P 9001 -r  -o ConnectTimeout=30 sathish@airtelga-1b:/home/sathish/airtelgb/*hourly_trend.txt /home/sathish/airtelgb/
echo "AirtelGB_data_received $(date)" >>/home/sathish/reportmsg.txt

fi

#### VPN-4###
echo "ALL_Market_file" >>/home/sathish/final_Result.txt
cd /home/sathish/tigorw/
typeset -i Z_FILE_COUNT=0
Z_FILE_COUNT=$(ls *.txt | wc -l)
echo "`date +%D` :TIGO_RWANDA Total_count: $Z_FILE_COUNT " >>/home/sathish/final_Result.txt
cd /home/sathish/virginksa/
typeset -i Z_FILE_COUNT1=0
Z_FILE_COUNT1=$(ls *.txt | wc -l)
echo "`date +%D` :Virgin_KSA Total_count: $Z_FILE_COUNT1 " >>/home/sathish/final_Result.txt
cd /home/sathish/telecelzw/
typeset -i Z_FILE_COUNT2=0
Z_FILE_COUNT2=$(ls *.txt | wc -l)
echo "`date +%D` :Telecel_ZIM Total_count: $Z_FILE_COUNT2 " >>/home/sathish/final_Result.txt
cd /home/sathish/airteltz/
typeset -i Z_FILE_COUNT3=0
Z_FILE_COUNT3=$(ls *.txt | wc -l)
echo "`date +%D` :AIRTEL_TZ Total_count: $Z_FILE_COUNT3 " >>/home/sathish/final_Result.txt
cd /home/sathish/airtelbf/
typeset -i Z_FILE_COUNT4=0
Z_FILE_COUNT4=$(ls *.txt | wc -l)
echo "`date +%D` :AIRTEL_BF Total_count: $Z_FILE_COUNT4 " >>/home/sathish/final_Result.txt
cd /home/sathish/airtelcg/
typeset -i Z_FILE_COUNT5=0
Z_FILE_COUNT5=$(ls *.txt | wc -l)
echo "`date +%D` :AIRTEL_CGB Total_count: $Z_FILE_COUNT5 " >>/home/sathish/final_Result.txt
cd /home/sathish/airtelmw/
typeset -i Z_FILE_COUNT6=0
Z_FILE_COUNT6=$(ls *.txt | wc -l)
echo "`date +%D` :AIRTEL_MW Total_count: $Z_FILE_COUNT6 " >>/home/sathish/final_Result.txt
cd /home/sathish/tata/
typeset -i Z_FILE_COUNT7=0
Z_FILE_COUNT7=$(ls *.txt | wc -l)
echo "`date +%D` :TATA_IND Total_count: $Z_FILE_COUNT7 " >>/home/sathish/final_Result.txt
cd /home/sathish/moovne/
typeset -i Z_FILE_COUNT8=0
Z_FILE_COUNT8=$(ls *.txt | wc -l)
echo "`date +%D` :MOOV_NE Total_count: $Z_FILE_COUNT8 " >>/home/sathish/final_Result.txt
cd /home/sathish/airtelgb/
typeset -i Z_FILE_COUNT9=0
Z_FILE_COUNT9=$(ls *.txt | wc -l)
echo "`date +%D` :AIRTEL_GB Total_count: $Z_FILE_COUNT9 " >>/home/sathish/final_Result.txt
echo "All_file_received" >>/home/sathish/final_Result.txt
cd /home/sathish/mci/
typeset -i Z_FILE_COUNT9=0
Z_FILE_COUNT9=$(ls *.txt | wc -l)
echo "`date +%D` :MCI_Iran Total_count: $Z_FILE_COUNT9 " >>/home/sathish/final_Result.txt
echo "All_file_received" >>/home/sathish/final_Result.txt

##################################################OUTSTADING###########

if [ `date +%d%H` = "0105" ]
then

##Tigo_Rwanda###
sshpass -p "acs/t4t4/" scp -r sathish@tigorw-1a:/home/sathish/outstading/*.txt /home/sathish/outstading/tigorw-1a/
echo "Tigo_Rwanda_data_received $(date)" >>/home/sathish/reportmsg.txt
##Virginksa###
sshpass -p "acs/t4t4/" scp -r sathish@virginksa-1a:/home/sathish/outstading/*.txt /home/sathish/outstading/virginksa-1a/
echo "Virgin_Ksa_data_received $(date)" >>/home/sathish/reportmsg.txt
##TelecelZiw###
sshpass -p "acs/t4t4/" scp -r sathish@telecelzw-db1a:/home/sathish/outstading/*.txt /home/sathish/outstading/telecelzw-db1a/
echo "TelecelZiw_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelTZ###
sshpass -p "acs@123comza" scp -P 2022 -r sathish@airteltz-db1b:/home/sathish/outstading/*.txt /home/sathish/outstading/airteltz-db1a/
echo "AirtelTZ_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelBF###
#sshpass -p "acs/t4t4/" scp -P 922 -r sathish@airtelbf-1b:/home/sathish/outstading/*.txt /home/sathish/outstading/airtelbf-1a/
#echo "AirtelBF_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelCGB###
sshpass -p "acs@123comza" scp -P 922 -r sathish@airtelcg-db1b:/home/sathish/outstading/*.txt /home/sathish/outstading/airtelcg-db1a/
echo "AirtelCGB_data_received $(date)" >>/home/sathish/reportmsg.txt
##TATA_IND###
sshpass -p "acs/t4t4/" scp -P 2022 -r sathish@tatain-db1b:/home/sathish/outstading/*.txt /home/sathish/outstading/tatain-db1a/
echo "TATA_IND_data_received $(date)" >>/home/sathish/reportmsg.txt
##AIRTELMW###
sshpass -p "acs@123comza" scp -P 20022 -r sathish@airtelmw-db1a:/home/sathish/outstading/*.txt /home/sathish/outstading/airtelmw-db1a/
echo "AIRTELMW_data_received $(date)" >>/home/sathish/reportmsg.txt
##MOOVNE###
sshpass -p "acs@123comza" scp -r sathish@moovne-1a:/home/sathish/outstading/*.txt /home/sathish/outstading/moovne-1a/
echo "MOOVNE_data_received $(date)" >>/home/sathish/reportmsg.txt
##AirtelGB###
sshpass -p "acs/t4t4/" scp -P 9001 -r sathish@airtelga-1b:/home/sathish/outstading/*.txt /home/sathish/outstading/airtelga-1a/
echo "AirtelGB_data_received $(date)" >>/home/sathish/reportmsg.txt
#MCI_IRAN###
#sshpass -p "Comza@123Acs" scp -P 6024 -r sathish@mciiran-db1a:/home/sathish/outstading/*.txt /home/sathish/outstading/mciiran-db1a/
#echo "MCI_IRAN_data_received $(date)" >>/home/sathish/reportmsg.txt
else

echo "All_file_received"
sh /home/sathish/Final.sh
echo "File sort also done"
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) seconds elapsed for Script Execution.$(date)" >>/tmp/Execution-time-of-script.txt

exit 1
fi
###Completed##
echo "All_file_received" >>/home/sathish/final_Result.txt
sh /home/sathish/final.sh
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) seconds elapsed for Script Execution. $(date)" >>/tmp/Execution-time-of-script.txt

PIDS="`ps eaxo bsdtime,pid,comm | egrep "sshpass" | grep " 0:05" | awk '{print $2}'`"

# Kill the process
echo "Killing sshpass processes running more than 5 min..."
for i in ${PIDS}; do { echo "Killing $i"; kill -9 $i; }; done;

rm -f $LOCKFILE
exit 0



