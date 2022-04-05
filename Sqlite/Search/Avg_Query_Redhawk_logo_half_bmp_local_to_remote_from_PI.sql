-- For Redhawk logo half bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:29:20.142683') AND strftime('%H %M %S %f', '2022-03-08 19:29:29.682123')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:29:34.261674') AND strftime('%H %M %S %f', '2022-03-08 19:29:43.460525')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:29:52.360138') AND strftime('%H %M %S %f', '2022-03-08 19:30:01.928203')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:30:06.904788') AND strftime('%H %M %S %f', '2022-03-08 19:30:16.497036')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:29:20.142683') AND strftime('%H %M %S %f', '2022-03-08 19:29:29.682123')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:29:34.261674') AND strftime('%H %M %S %f', '2022-03-08 19:29:43.460525')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:29:52.360138') AND strftime('%H %M %S %f', '2022-03-08 19:30:01.928203')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:30:06.904788') AND strftime('%H %M %S %f', '2022-03-08 19:30:16.497036');