/* I don't think SQLite has the capability to do all of the calculations we need like other database IDEs I've used
or, if it does, I can't find anything about it. So, calculations after finding the averages are by hand for now. */

-- The average of the ping current values, this will be the second value displayed
SELECT avg(current) FROM current 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-09-27 17:30:37.858201') AND strftime('%H %M %S %f', '2021-09-27 17:30:43.258201')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(current) FROM current 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-09-27 17:30:37.858201') AND strftime('%H %M %S %f', '2021-09-27 17:30:43.258201');

/* These queries can be easily manipulated to work for every set of data we ever make, it's a simple matter of changing the column 
name and table name to power (or whatever we decide to call it when we start using power instead) and changing the dates to fit 
where the pings occur. */

