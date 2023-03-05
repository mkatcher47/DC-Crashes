SELECT
	SUBSTRING(reportdate, 1, 4) AS year1, SUM(total_vehicles) as tot_vehicles, SUM(total_bicycles) as tot_bicylces
FROM
	dc_crash_data
GROUP BY
	year1