# Create a Heatmap of Bicycle Crashes in Washington, DC

First, I downloaded the data from [Open Data DC](https://opendata.dc.gov/datasets/DCGIS::crashes-in-dc/about) and created a PostGRE database. A table was created using create_table_3.sql.

Next, I extracted data from the database of all the crashes, limited to the information required for my review.

```SQL
SELECT
	crimeid, reportdate, latitude, longitude, majorinjuries_bicyclist, minorinjuries_bicyclist, fatal_bicyclist, unknowninjuries_bicyclist, total_bicycles, total_vehicles, (majorinjuries_bicyclist+ minorinjuries_bicyclist + fatal_bicyclist + unknowninjuries_bicyclist) AS total_bicycle_injuries
FROM
	dc_crash_data
WHERE
	total_vehicles > 0 OR majorinjuries_bicyclist > 0 OR minorinjuries_bicyclist > 0 OR fatal_bicyclist > 0 OR unknowninjuries_bicyclist > 0
```

Next, I extracted the totals for the crashes by year.

```SQL
SELECT
	SUBSTRING(reportdate, 1, 4) AS year1, SUM(total_vehicles) as tot_vehicles, SUM(total_bicycles) as tot_bicylces
FROM
	dc_crash_data
GROUP BY
	year1
```

This created a table including NULL year and years as early as 1975 with minimal data. The data was cleaned by removing NULL and years before 2012, the first good year of results.

## Results

The data exports from SQL were uploaded to Tableau Public to a new DC crash data [dashboard](https://public.tableau.com/views/WashingtonDCBicycleCrashes/BicycleCrashesDashboard?:language=en-US&:display_count=n&:origin=viz_share_link).
