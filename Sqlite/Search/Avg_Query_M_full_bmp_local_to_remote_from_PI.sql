-- For M full bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:48:40.875333') AND strftime('%H %M %S %f', '2022-03-08 18:48:48.874431')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:48:52.720281') AND strftime('%H %M %S %f', '2022-03-08 18:49:00.595968')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:49:05.203898') AND strftime('%H %M %S %f', '2022-03-08 18:49:13.325414')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:49:15.234523') AND strftime('%H %M %S %f', '2022-03-08 18:49:23.303440')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:49:28.443829') AND strftime('%H %M %S %f', '2022-03-08 18:49:36.671611')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:48:40.875333') AND strftime('%H %M %S %f', '2022-03-08 18:48:48.874431')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:48:52.720281') AND strftime('%H %M %S %f', '2022-03-08 18:49:00.595968')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:49:05.203898') AND strftime('%H %M %S %f', '2022-03-08 18:49:13.325414')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:49:15.234523') AND strftime('%H %M %S %f', '2022-03-08 18:49:23.303440')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:49:28.443829') AND strftime('%H %M %S %f', '2022-03-08 18:49:36.671611');
