-- For PC remote from PI Peter Jamieson half bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:01:40.248719') AND strftime('%H %M %S %f', '2022-03-15 19:01:57.405317')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:01:58.663561') AND strftime('%H %M %S %f', '2022-03-15 19:02:13.355410')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:02:18.400781') AND strftime('%H %M %S %f', '2022-03-15 19:02:32.777406')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:02:41.025816') AND strftime('%H %M %S %f', '2022-03-15 19:02:55.681209')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:03:05.347300') AND strftime('%H %M %S %f', '2022-03-15 19:03:19.956972')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:03:37.666858') AND strftime('%H %M %S %f', '2022-03-15 19:03:52.387185')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:01:40.248719') AND strftime('%H %M %S %f', '2022-03-15 19:01:57.405317')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:01:58.663561') AND strftime('%H %M %S %f', '2022-03-15 19:02:13.355410')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:02:18.400781') AND strftime('%H %M %S %f', '2022-03-15 19:02:32.777406')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:02:41.025816') AND strftime('%H %M %S %f', '2022-03-15 19:02:55.681209')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:03:05.347300') AND strftime('%H %M %S %f', '2022-03-15 19:03:19.956972')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:03:37.666858') AND strftime('%H %M %S %f', '2022-03-15 19:03:52.387185');