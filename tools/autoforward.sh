#!/bin/bash
forward(){
    psall=`ps aux|grep $1|grep -v grep|grep -v -i "python"`
    if [ -z "${psall}" ];then
        cd /home/pi/rpi/tools/ && ./ssh_forward.sh $1 $2
    else
        echo "already exist the ssh forward $1 $2"
    fi
}

forward 22 1222
forward 8080 18080
forward 8081 18081
forward 8082 18082
forward 8083 18083
forward 8084 18084
forward 8085 18085
#cd /home/pi/rpi/tools/ && ./ssh_forward.sh 22 12222 >>/var/log/rpi.log
#cd /home/pi/rpi/tools/ && ./ssh_forward.sh 8080 18080 >>/var/log/rpi.log
#cd /home/pi/rpi/tools/ && ./ssh_forward.sh 8081 18081 >>/var/log/rpi.log
#cd /home/pi/rpi/tools/ && ./ssh_forward.sh 8082 18082 >>/var/log/rpi.log
#cd /home/pi/rpi/tools/ && ./ssh_forward.sh 8083 18083 >>/var/log/rpi.log
#cd /home/pi/rpi/tools/ && ./ssh_forward.sh 8084 18084 >>/var/log/rpi.log
echo "`date` finish start ssh forward" >>/var/log/rpi.log
