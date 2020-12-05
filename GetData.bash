#!/usr/bin/bash
#https://github.com/petjal/covid-death-time-chart-patterns/new/main
#AUTHOR: pete@jalajas.com
#DATE: 2020-12-04
#LICENSE: SPDX Apache-2.0
#VERSION: 

curl https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv | grep Massachusetts > MA.out
