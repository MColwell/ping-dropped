#!/bin/bash
#ping results
filename=/home/mack/pingresults.txt
add=$(date +"%m-%d-%y %T")
echo $add >> $filename
tweet=$(ping -c 100 8.8.8.8 | tail -2 | head -1)
tweet=`expr "$tweet" : '.*,.*,.\([0-9].*\),'`
#echo $tweet
#$digits=`expr length $tweet`
none="0% packet loss"
if [ $tweet -ne $none ]
#if [$digits -gt 14]
#if [ $digits -ne "0% packet loss" ]
then
    tweet="Hi @Comcast! Looks like I've got $tweet. FIX IT."
    echo $tweet
fi
#ping -c 100 8.8.8.8 | tail -2 | head -1 >> $filename
exit
