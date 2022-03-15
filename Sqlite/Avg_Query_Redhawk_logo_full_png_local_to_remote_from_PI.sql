-- For Redhawk logo full png local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:20.611693') AND strftime('%H %M %S %f', '2022-03-08 19:26:29.167769')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:31.089059') AND strftime('%H %M %S %f', '2022-03-08 19:26:40.111646')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:42.663835') AND strftime('%H %M %S %f', '2022-03-08 19:26:51.371502')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:58.064366') AND strftime('%H %M %S %f', '2022-03-08 19:27:05.886833')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:27:15.794803') AND strftime('%H %M %S %f', '2022-03-08 19:27:24.379736')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:27:36.957794') AND strftime('%H %M %S %f', '2022-03-08 19:27:45.231235')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:20.611693') AND strftime('%H %M %S %f', '2022-03-08 19:26:29.167769')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:31.089059') AND strftime('%H %M %S %f', '2022-03-08 19:26:40.111646')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:42.663835') AND strftime('%H %M %S %f', '2022-03-08 19:26:51.371502')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:26:58.064366') AND strftime('%H %M %S %f', '2022-03-08 19:27:05.886833')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:27:15.794803') AND strftime('%H %M %S %f', '2022-03-08 19:27:24.379736')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:27:36.957794') AND strftime('%H %M %S %f', '2022-03-08 19:27:45.231235');
