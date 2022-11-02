#!/bin/bash

echo -n -e " 5G / 4G ?? [5/4] "
read GGG

if [[ $GGG == 5 ]]
then
    a=`cat /var/log/open5gs/amf.log`
    b=`cat /var/log/open5gs/upf.log`
    c=`cat /var/log/open5gs/ausf.log`
    d=`cat /var/log/open5gs/udm.log`
    e=`cat /var/log/open5gs/udr.log`
    f=`cat /var/log/open5gs/pcf.log`
    g=`cat /var/log/open5gs/smf.log`
    h=`cat /var/log/open5gs/nrf.log`
    i=`cat /var/log/open5gs/nssf.log`
    j=`cat /var/log/open5gs/bsf.log`

    cd raw
    echo "$a" > amf.csv
    echo "$b" > upf.csv
    echo "$c" > ausf.csv
    echo "$d" > udm.csv
    echo "$e" > udr.csv
    echo "$f" > pcf.csv
    echo "$g" > smf.csv
    echo "$h" > nrf.csv
    echo "$i" > nssf.csv
    echo "$j" > bsf.csv

    echo -n -e " updatedb?? [y/n] "
    read VAR

    if [[ $VAR == y ]]
    then
        sudo updatedb
        echo
        echo "okeh di update"

    elif [[ $VAR == n ]]
    then
        echo
        echo "okewes skip"
        echo
    fi

    cc=`locate lognother/raw/5G_log.csv`
    if [ -z "$cc" ]
    then
        echo "creating log file in csv ...."
    else
        rm 5G_log.csv
        echo "recreating log in csv ...."
    fi

    echo -e "$a \n\n" >> 5G_log.csv
    echo -e "$b \n\n" >> 5G_log.csv
    echo -e "$c \n\n" >> 5G_log.csv
    echo -e "$d \n\n" >> 5G_log.csv
    echo -e "$e \n\n" >> 5G_log.csv
    echo -e "$f \n\n" >> 5G_log.csv
    echo -e "$g \n\n" >> 5G_log.csv
    echo -e "$h \n\n" >> 5G_log.csv
    echo -e "$i \n\n" >> 5G_log.csv
    echo -e "$j \n\n" >> 5G_log.csv

    cp 5G_log.csv ../res/5G_log.csv
    rm 5G_log.csv
    echo "donee..."

elif [[ $GGG == 4 ]]
then
    a=`cat /var/log/open5gs/mme.log`
    b=`cat /var/log/open5gs/hss.log`
    c=`cat /var/log/open5gs/pcrf.log`
    d=`cat /var/log/open5gs/sgwc.log`
    e=`cat /var/log/open5gs/sgwu.log`
    f=`cat /var/log/open5gs/smf.log`
    g=`cat /var/log/open5gs/upf.log`

    cd raw
    echo "$a" > mme.csv
    echo "$b" > hss.csv
    echo "$c" > pcrf.csv
    echo "$d" > sgwc.csv
    echo "$e" > sgwu.csv
    echo "$f" > smf.csv
    echo "$g" > upf.csv

    echo -n -e " updatedb?? [y/n] "
    read VAR

    if [[ $VAR == y ]]
    then
        sudo updatedb
        echo
        echo "okeh di update"

    elif [[ $VAR == n ]]
    then
        echo
        echo "okewes skip"
        echo
    fi

    cc=`locate lognother/raw/4G_log.csv`
    if [ -z "$cc" ]
    then
        echo "creating log file in csv ...."
    else
        rm 4G_log.csv
        echo "recreating log in csv ...."
    fi

    echo -e "$a \n\n" >> 4G_log.csv
    echo -e "$b \n\n" >> 4G_log.csv
    echo -e "$c \n\n" >> 4G_log.csv
    echo -e "$d \n\n" >> 4G_log.csv
    echo -e "$e \n\n" >> 4G_log.csv
    echo -e "$f \n\n" >> 4G_log.csv
    echo -e "$g \n\n" >> 4G_log.csv
    
    cp 4G_log.csv ../res/4G_log.csv
    rm 4G_log.csv
    echo "donee..."
fi
