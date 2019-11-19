#!/bin/bash
for remote_srv in $( cat host.txt ); do
  echo $remote_srv
# sshpass -p "$acs@123comza" ssh -T "$remote_srv" df
sshpass -p "$acs@123comza" ssh -t "$sathish"@"$remote_srv"  df ;
done
