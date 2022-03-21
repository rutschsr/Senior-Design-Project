-- For PC remote from PI Redhawk logo double png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:11:33.824159') AND strftime('%H %M %S %f', '2022-03-15 19:11:48.036917')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:11:51.186411') AND strftime('%H %M %S %f', '2022-03-15 19:12:05.378029')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:12:23.125311') AND strftime('%H %M %S %f', '2022-03-15 19:12:37.207075')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:12:42.916398') AND strftime('%H %M %S %f', '2022-03-15 19:12:57.444675')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:13:09.223467') AND strftime('%H %M %S %f', '2022-03-15 19:13:23.538676')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:11:33.824159') AND strftime('%H %M %S %f', '2022-03-15 19:11:48.036917')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:11:51.186411') AND strftime('%H %M %S %f', '2022-03-15 19:12:05.378029')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:12:23.125311') AND strftime('%H %M %S %f', '2022-03-15 19:12:37.207075')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:12:42.916398') AND strftime('%H %M %S %f', '2022-03-15 19:12:57.444675')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:13:09.223467') AND strftime('%H %M %S %f', '2022-03-15 19:13:23.538676');