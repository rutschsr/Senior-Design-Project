-- For PC remote from PI Redhawk Logo full png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:17:30.822376') AND strftime('%H %M %S %f', '2022-03-15 19:17:42.843406')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:17:46.591622') AND strftime('%H %M %S %f', '2022-03-15 19:17:58.657372')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:18:06.918849') AND strftime('%H %M %S %f', '2022-03-15 19:18:18.735244')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:18:21.598666') AND strftime('%H %M %S %f', '2022-03-15 19:18:33.582148')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:18:39.755238') AND strftime('%H %M %S %f', '2022-03-15 19:18:51.669413')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:17:30.822376') AND strftime('%H %M %S %f', '2022-03-15 19:17:42.843406')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:17:46.591622') AND strftime('%H %M %S %f', '2022-03-15 19:17:58.657372')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:18:06.918849') AND strftime('%H %M %S %f', '2022-03-15 19:18:18.735244')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:18:21.598666') AND strftime('%H %M %S %f', '2022-03-15 19:18:33.582148')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:18:39.755238') AND strftime('%H %M %S %f', '2022-03-15 19:18:51.669413');