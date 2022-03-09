-- For Peter Jamieson 2015 double bmp remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:03:17.666135') AND strftime('%H %M %S %f', '2022-03-08 18:04:06.049686')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:04:20.852512') AND strftime('%H %M %S %f', '2022-03-08 18:05:10.505566')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:05:15.575738') AND strftime('%H %M %S %f', '2022-03-08 18:06:01.669936')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:06:17.549199') AND strftime('%H %M %S %f', '2022-03-08 18:07:06.654093')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:03:17.666135') AND strftime('%H %M %S %f', '2022-03-08 18:04:06.049686')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:04:20.852512') AND strftime('%H %M %S %f', '2022-03-08 18:05:10.505566')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:05:15.575738') AND strftime('%H %M %S %f', '2022-03-08 18:06:01.669936')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:06:17.549199') AND strftime('%H %M %S %f', '2022-03-08 18:07:06.654093');
