-- For PC remote from PI Redhawk logo half bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:19:36.584050') AND strftime('%H %M %S %f', '2022-03-15 19:19:49.629239')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:20:03.260474') AND strftime('%H %M %S %f', '2022-03-15 19:20:14.954112')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:20:25.943010') AND strftime('%H %M %S %f', '2022-03-15 19:20:39.057715')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:20:41.580855') AND strftime('%H %M %S %f', '2022-03-15 19:20:57.418819')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:21:02.243727') AND strftime('%H %M %S %f', '2022-03-15 19:21:15.231679')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:19:36.584050') AND strftime('%H %M %S %f', '2022-03-15 19:19:49.629239')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:20:03.260474') AND strftime('%H %M %S %f', '2022-03-15 19:20:14.954112')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:20:25.943010') AND strftime('%H %M %S %f', '2022-03-15 19:20:39.057715')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:20:41.580855') AND strftime('%H %M %S %f', '2022-03-15 19:20:57.418819')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:21:02.243727') AND strftime('%H %M %S %f', '2022-03-15 19:21:15.231679');