#!/usr/bin/bash
#https://github.com/petjal/covid-death-time-chart-patterns/new/main
#AUTHOR: pete@jalajas.com
#DATE: 2020-12-04
#LICENSE: SPDX Apache-2.0
#VERSION: 

#CONFIG
DATA_FILE_URL="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv"

#INIT
date
date --utc
hostname -f
pwd
whoami
apt-get install csvtool

#MAINI

echo
#curl --trace-ascii - $DATA_FILE_URL| grep Massachusetts > MA.out
curl $DATA_FILE_URL | grep Massachusetts > MA.out
echo
#find -iname "*.out" | xargs -I% head "%"
head MA.out
echo

#REFERENCE
: '
Deleting the contents of '/home/runner/work/covid-death-time-chart-patterns/covid-death-time-chart-patterns'

'
