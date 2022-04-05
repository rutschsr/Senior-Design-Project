-- For Peter Jamieson 2015 full bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:08:36.884771') AND strftime('%H %M %S %f', '2022-03-08 19:08:55.159499')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:08:56.839214') AND strftime('%H %M %S %f', '2022-03-08 19:09:14.869174')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:09:16.929437') AND strftime('%H %M %S %f', '2022-03-08 19:09:35.273712')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:09:44.145657') AND strftime('%H %M %S %f', '2022-03-08 19:10:02.196015')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:10:10.985862') AND strftime('%H %M %S %f', '2022-03-08 19:10:29.277379')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:08:36.884771') AND strftime('%H %M %S %f', '2022-03-08 19:08:55.159499')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:08:56.839214') AND strftime('%H %M %S %f', '2022-03-08 19:09:14.869174')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:09:16.929437') AND strftime('%H %M %S %f', '2022-03-08 19:09:35.273712')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:09:44.145657') AND strftime('%H %M %S %f', '2022-03-08 19:10:02.196015')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:10:10.985862') AND strftime('%H %M %S %f', '2022-03-08 19:10:29.277379');
