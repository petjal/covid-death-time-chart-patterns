# covid-death-time-chart-patterns
A feeble attempt to group states by their patterns of daily deaths over time. 

# viral-health regions
Example:  See image below, edited from https://www.washingtonpost.com/graphics/2020/national/coronavirus-us-cases-deaths/?itid=sf_coronavirus
MA, NY, CT, NJ are quite similar in pattern of daily deaths over time (huge peak in April 2020, pretty flat since then, small rise late Fall 2020).  Maybe try to group them into about 8 or so groups.  

## example initial observation
MA, NY, CT, NJ have quite similar curves. Why? Are they _that_ similar in how and when they locked down, wore masks, washed hands, socially distanced, or their metabolic health, co-morbidities, vitamin D status, ambient humidity, UV insolation, etc?  Maybe true, but maybe hard to believe.

![Trying to group states by daily-deaths curve shape.](/media/GroupingStatesByDailyDeathRateCurves_20201204_petjal.png)

As opposed to...

# geographic or semi-topographic regions

See https://covidtracking.com/data/charts/us-daily-deaths 
That is grouping states into virus-health-arbitrary geographic regions. I want to try to group them by virus-health-regions. 
![Geographic Regions](/media/USGeographicRegions_20201205_petjal.png)

# climate regions
This experiment _may_ result in similarities of viral-health regions with climate regions. 

See: ![here](https://duckduckgo.com/?q=us+climatologic+regions&page=1&adx=shv1b&sexp=%7B%22artexp%22%3A%22b%22%2C%22prodexp%22%3A%22b%22%2C%22prdsdexp%22%3A%22c%22%2C%22biaexp%22%3A%22b%22%2C%22msvrtexp%22%3A%22b%22%2C%22shv1%22%3A%22b%22%2C%22shvflt%22%3A%22b%22%7D&iax=images&ia=images&iai=https%3A%2F%2Fwww.esri.com%2Farcgis-blog%2Fwp-content%2Fuploads%2F2018%2F04%2FD.png)
![US Climate Regions](/media/USClimateRegions_20201205_petjal.png)

# plan
1. Use github action to pull json data from https://api.covidtracking.com/v1/states/daily.json
2. json fields: date, deathIncrease, state
3. Calculate the average the daily deaths, for each state, from day 1 through 7 of each month, from March 2020 to current date.
4. Each state would then have an array of _i_=10 (as of December 7, 2020) values.  
5. Calculate the distances of the states from each other in _i_-dimensional space.
6. Something like that.

This is a complete learning experience for me. Suggestions welcome--thanks!
