#!/bin/bash
#SHELL=/bin/bash
#PATH=/sbin:/bin:/usr/sbin:/usr/bin
cd /home/sathish/
rm -rf message* final_mail*
FILENAME=Monitoring2.log
SIZE=$(du -sb $FILENAME | awk '{ print $1 }')
if ((SIZE >= 470)) ; then
sed -n '12,1020p' Monitoring2.log >message
 #date | tr '\n' ' ' >> message
 #echo "      " | tr '\n' ' ' >> message
grep -vE '^----------------Disk' message >message1
grep -vE '^----------------Load' message1 >message2
rm -rf message message1 
sed -i -e '1i############System alerts###########' message2
awk 'BEGIN{system("date")}1' message2 >message3
sed 's/--.*//' message3 >final_mail
#mail -s "Monitoring alerts `$date` " Comza-market-support@comzafrica.com,noc@comzafrica.com < "final_mail"
echo "script executed successfully"
mail -s "Monitoring alerts `$date` level 1 escalation " sathishkumar@comzafrica.com < "final_mail"
rm -rf message message1 message2 message3 
else 
#cd /home/arnaud/Mail/logs/
#rm -rf message* final_mail*
#sed -n '12,1020p' Monitoring2.log >message4
 #date | tr '\n' ' ' >> message
 #echo "      " | tr '\n' ' ' >> message
#grep -vE '^----------------Disk' message4 >message5
#grep -vE '^----------------Load' message5 >message6
#sed -i -e '1i############System alerts###########' message6
#awk 'BEGIN{system("date")}1' message6 >message7
#sed 's/--.*//' message7 >final_mail_1
#mail -s "Monitoring alerts `$date` " sathishkumar@comzafrica.com < "final_mail_1"
#rm -rf message*
echo "script execute failed"
exit 0
fi

