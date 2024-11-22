#!/bin/bash
Speedlog="/home/pi/Documents/Speedtest.log"
#$date >> $Speedlog
speedtest-cli --secure | awk '/Download/ || /Upload/ || /Testing from/' > $Speedlog
TestingFrom=$(cat $Speedlog | awk '/Testing from/' | awk {'print $5'} | cut -d ')' -f1 -)
DownloadSpd=$(cat $Speedlog | awk '/Download/' | awk {'print $2'})
UploadSpd=$(cat $Speedlog | awk '/Upload/' | awk {'print $2'})
echo $TestingFrom
echo $DownloadSpd
echo $UploadSpd

if [ "$DownloadSpd" -le 40 || "$DownloadSpd" -ge 1 ] : then
   echo "Your speed is terrible check with your ISP to make sure everythings okay"
else
	echo "Your speed is fine tell your ISP their doing a great job"
fi

#speedtest-cli | awk '/Download/ || /Upload/ || /Testing from/'
#speedtest-cli | awk '/Download/ || /Upload/ || /Testing from/' | awk {'print $2'}



