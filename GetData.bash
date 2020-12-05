#!/usr/bin/bash
#https://github.com/petjal/covid-death-time-chart-patterns/new/main
#AUTHOR: pete@jalajas.com
#DATE: 2020-12-04
#LICENSE: SPDX Apache-2.0
#VERSION: 

#CONFIG
DATA_FILE_URL="https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv"
TEST_STATE=Massachusetts # TODO: put in hard work to deal with funny states names, space

#INIT
date
date --utc
hostname -f
pwd
whoami
sudo apt-get install csvtool  # sudo works; without: E: Could not open lock file /var/lib/dpkg/lock-frontend - open (13: Permission denied)
echo

#MAIN

echo
#curl --trace-ascii - $DATA_FILE_URL| grep Massachusetts > MA.out
curl $DATA_FILE_URL | grep "${TEST_STATE}" > "${TEST_STATE}.csv"
echo
#find -iname "*.out" | xargs -I% head "%"
echo example rows from file:
head "${TEST_STATE}.csv"
echo
echo number columns in "${TEST_STATE}.csv" file:
csvtool width "${TEST_STATE}.csv"
echo

#REFERENCE
: '
Deleting the contents of '/home/runner/work/covid-death-time-chart-patterns/covid-death-time-chart-patterns'

'
