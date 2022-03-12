-- For Peter Jamieson 2015 half bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:14:33.406777') AND strftime('%H %M %S %f', '2022-03-08 19:14:44.460016')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:14:46.615999') AND strftime('%H %M %S %f', '2022-03-08 19:14:57.437499')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:15:00.025351') AND strftime('%H %M %S %f', '2022-03-08 19:15:11.052061')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:15:13.152624') AND strftime('%H %M %S %f', '2022-03-08 19:15:24.014806')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:10:10.985862') AND strftime('%H %M %S %f', '2022-03-08 19:10:29.277379')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:14:33.406777') AND strftime('%H %M %S %f', '2022-03-08 19:14:44.460016')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:14:46.615999') AND strftime('%H %M %S %f', '2022-03-08 19:14:57.437499')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:15:00.025351') AND strftime('%H %M %S %f', '2022-03-08 19:15:11.052061')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:15:13.152624') AND strftime('%H %M %S %f', '2022-03-08 19:15:24.014806')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:10:10.985862') AND strftime('%H %M %S %f', '2022-03-08 19:10:29.277379');
