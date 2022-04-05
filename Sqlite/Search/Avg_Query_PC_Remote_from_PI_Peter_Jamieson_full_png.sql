-- For PC remote from PI Peter Jamieson full png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:58:09.446100') AND strftime('%H %M %S %f', '2022-03-15 18:58:25.447789')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:58:30.522879') AND strftime('%H %M %S %f', '2022-03-15 18:58:46.537540')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:58:52.632316') AND strftime('%H %M %S %f', '2022-03-15 18:59:08.809968')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:59:11.972926') AND strftime('%H %M %S %f', '2022-03-15 18:59:28.244974')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:59:37.898936') AND strftime('%H %M %S %f', '2022-03-15 18:59:53.995158')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:00:06.004175') AND strftime('%H %M %S %f', '2022-03-15 19:00:21.911925')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:58:09.446100') AND strftime('%H %M %S %f', '2022-03-15 18:58:25.447789')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:58:30.522879') AND strftime('%H %M %S %f', '2022-03-15 18:58:46.537540')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:58:52.632316') AND strftime('%H %M %S %f', '2022-03-15 18:59:08.809968')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:59:11.972926') AND strftime('%H %M %S %f', '2022-03-15 18:59:28.244974')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:59:37.898936') AND strftime('%H %M %S %f', '2022-03-15 18:59:53.995158')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:00:06.004175') AND strftime('%H %M %S %f', '2022-03-15 19:00:21.911925');