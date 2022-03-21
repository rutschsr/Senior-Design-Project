-- For PC remote from PI Redhawk logo full bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:14:31.373547') AND strftime('%H %M %S %f', '2022-03-15 19:14:48.206701')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:14:52.626250') AND strftime('%H %M %S %f', '2022-03-15 19:15:09.636663')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:15:29.033649') AND strftime('%H %M %S %f', '2022-03-15 19:15:45.896817')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:16:00.932108') AND strftime('%H %M %S %f', '2022-03-15 19:16:17.602384')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:16:34.505534') AND strftime('%H %M %S %f', '2022-03-15 19:16:50.946129')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:14:31.373547') AND strftime('%H %M %S %f', '2022-03-15 19:14:48.206701')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:14:52.626250') AND strftime('%H %M %S %f', '2022-03-15 19:15:09.636663')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:15:29.033649') AND strftime('%H %M %S %f', '2022-03-15 19:15:45.896817')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:16:00.932108') AND strftime('%H %M %S %f', '2022-03-15 19:16:17.602384')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:16:34.505534') AND strftime('%H %M %S %f', '2022-03-15 19:16:50.946129');