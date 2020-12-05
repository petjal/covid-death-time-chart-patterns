# covid-death-time-chart-patterns
A feeble attempt to group states by their patterns of daily deaths over time. 

Example:  See image below, edited from https://www.washingtonpost.com/graphics/2020/national/coronavirus-us-cases-deaths/?itid=sf_coronavirus
MA, NY, CT, NJ are quite similar in pattern of daily deaths over time (huge peak in April 2020, pretty flat since then, small rise late Fall 2020).  Maybe try to group them into about 8 or so groups.  

![Trying to group states by daily-deaths curve shape.](GroupingStatesByDailyDeathRateCurves_20201204_petjal.png)

As opposed to:

See https://covidtracking.com/data/charts/us-daily-deaths 
That is grouping states into virus-health-arbitrary geographic regions. I want to try to group them by virus-health-regions. 
![Geographic Regions](/media/USGeographicRegions_20201205_petjal.png)

Or see: ![here](https://duckduckgo.com/?q=us+climatologic+regions&page=1&adx=shv1b&sexp=%7B%22artexp%22%3A%22b%22%2C%22prodexp%22%3A%22b%22%2C%22prdsdexp%22%3A%22c%22%2C%22biaexp%22%3A%22b%22%2C%22msvrtexp%22%3A%22b%22%2C%22shv1%22%3A%22b%22%2C%22shvflt%22%3A%22b%22%7D&iax=images&ia=images&iai=https%3A%2F%2Fwww.esri.com%2Farcgis-blog%2Fwp-content%2Fuploads%2F2018%2F04%2FD.png)
![US Climate Regions](/media/USClimateRegions_20201205_petjal.png)

# Plan:
1. Pull data from https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv
1a. Better, use free apis.
2. By state.
3. Average daily deaths from day 1 through 7 of each month from March 2020 to current date.
4. Each state would then have an array of 9 (through Nov 2020) values.  
5. Calculate the distances of the states from each other in 9-dimensional space.
6. Something like that.

But first, let's just try to automate calculating those 9 numbers for each state. 

TODO:  Try curl apis from https://api.covid19api.com/countries or perhaps elsewhere

This is a complete learning experience for me. Suggestions welcome--thanks!

