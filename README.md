# Create a Heatmap of Bicycle Crashes in Washington, DC

First, I downloaded the data from [Open Data DC](https://opendata.dc.gov/datasets/DCGIS::crashes-in-dc/about) and created a PostGRE database. A table was created using the command below:

'''SQL
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
'''




## Results

The data exports from SQL were uploaded to Tableau Public to a new DC crash data [dashboard](https://public.tableau.com/views/WashingtonDCBicycleCrashes/BicycleCrashesDashboard?:language=en-US&:display_count=n&:origin=viz_share_link).
