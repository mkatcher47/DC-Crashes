# Create a Heatmap of Bicycle Crashes in Washington, DC

First, I downloaded the data from [Open Data DC](https://opendata.dc.gov/datasets/DCGIS::crashes-in-dc/about) and created a PostGRE database. A table was created using the command below:

```SQL
create table dc_crash_data (x decimal(9,6),
y decimal(9,6),
objectid int,
crimeid varchar(25),
ccn char(8),
reportdate varchar(25),
routeid varchar(255),
measure decimal(7,2),
xoffset decimal(7,2),
streetsegid int,
roadwaysegid int,
fromdate varchar(25),
todate varchar(25),
address varchar(100),
latitude decimal(9,6),
longitude decimal(9,6),
xcoord decimal(9,3),
ycoord decimal(9,3),
ward varchar(50),
eventid varchar(38),
mar_address varchar(100),
mar_score decimal(9,6),
majorinjuries_bicyclist int,
minorinjuries_bicyclist int,
unknowninjuries_bicyclist int,
fatal_bicyclist int,
majorinjuries_driver int,
minorinjuries_driver int,
unknowninjuries_driver int,
fatal_driver int,
majorinjuries_pedestrian int,
minorinjuries_pedestrian int,
unknowninjuries_pedestrian int,
fatal_pedestrian int,
total_vehicles int,
total_bicycles int,
total_pedestrians int,
pedestriansimpaired int,
bicyclistsimpaired int,
driversimpaired int,
total_taxis int,
total_government int,
speeding_involved int,
nearestintrouteid varchar(100),
nearestintstreetname varchar(250),
offintersection decimal(6,2),
intapproachdirection varchar(50),
locationerror varchar(100),
lastupdatedate varchar(25),
mpdlatitude decimal(9,6),
mpdlongitude decimal(9,6),
mpdgeox decimal(9,3),
mpdgeoy decimal(9,3),
fatalpassenger int,
majorinjuriespassenger int,
minorinjuriespassenger int,
unknowninjuriespassenger int,
mar_id int);
```

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
