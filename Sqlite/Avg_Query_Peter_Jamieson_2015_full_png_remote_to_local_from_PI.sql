-- For Peter Jamieson 2015 full png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:16:44.636649') AND strftime('%H %M %S %f', '2022-03-08 18:16:55.965249')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:04.701753') AND strftime('%H %M %S %f', '2022-03-08 18:17:15.797702')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:22.379636') AND strftime('%H %M %S %f', '2022-03-08 18:17:34.000224')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:40.904378') AND strftime('%H %M %S %f', '2022-03-08 18:17:52.421625')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:55.391176') AND strftime('%H %M %S %f', '2022-03-08 18:18:06.745161')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:16:44.636649') AND strftime('%H %M %S %f', '2022-03-08 18:16:55.965249')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:04.701753') AND strftime('%H %M %S %f', '2022-03-08 18:17:15.797702')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:22.379636') AND strftime('%H %M %S %f', '2022-03-08 18:17:34.000224')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:40.904378') AND strftime('%H %M %S %f', '2022-03-08 18:17:52.421625')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:17:55.391176') AND strftime('%H %M %S %f', '2022-03-08 18:18:06.745161');
