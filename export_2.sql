SELECT
	crimeid, reportdate, latitude, longitude, majorinjuries_bicyclist, minorinjuries_bicyclist, fatal_bicyclist, unknowninjuries_bicyclist, total_bicycles, total_vehicles, (majorinjuries_bicyclist+ minorinjuries_bicyclist + fatal_bicyclist + unknowninjuries_bicyclist) AS total_bicycle_injuries
FROM
	dc_crash_data
WHERE
	total_vehicles > 0 OR majorinjuries_bicyclist > 0 OR minorinjuries_bicyclist > 0 OR fatal_bicyclist > 0 OR unknowninjuries_bicyclist > 0