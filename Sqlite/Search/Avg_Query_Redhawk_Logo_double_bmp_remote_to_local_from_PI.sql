-- For Redhawk logo double bmp remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:27:13.090888') AND strftime('%H %M %S %f', '2022-03-08 18:27:36.359737')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:27:41.770296') AND strftime('%H %M %S %f', '2022-03-08 18:28:05.132726')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:28:10.702496') AND strftime('%H %M %S %f', '2022-03-08 18:28:33.508375')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:28:36.150118') AND strftime('%H %M %S %f', '2022-03-08 18:29:00.126969')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:29:07.240988') AND strftime('%H %M %S %f', '2022-03-08 18:29:30.627612')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:27:13.090888') AND strftime('%H %M %S %f', '2022-03-08 18:27:36.359737')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:27:41.770296') AND strftime('%H %M %S %f', '2022-03-08 18:28:05.132726')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:28:10.702496') AND strftime('%H %M %S %f', '2022-03-08 18:28:33.508375')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:28:36.150118') AND strftime('%H %M %S %f', '2022-03-08 18:29:00.126969')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:29:07.240988') AND strftime('%H %M %S %f', '2022-03-08 18:29:30.627612');
