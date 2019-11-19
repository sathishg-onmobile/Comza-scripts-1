#!/bin/bash
# This script will kill process which running more than X hours
# egrep: the selected process; grep: hours

PIDS="`ps eaxo bsdtime,pid,comm | egrep "sshpass" | grep " 0:05" | awk '{print $2}'`"
# Kill the process
for i in ${PIDS}; do { echo "Killing sshpass processes running more than 5 min $i"; kill -9 $i; };done;
