-- For M full double bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:53:59.334895') AND strftime('%H %M %S %f', '2022-03-08 18:54:10.590246')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:54:11.233625') AND strftime('%H %M %S %f', '2022-03-08 18:54:20.580610')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:54:34.280725') AND strftime('%H %M %S %f', '2022-03-08 18:54:43.520644')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:54:48.742892') AND strftime('%H %M %S %f', '2022-03-08 18:54:58.949927')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:53:59.334895') AND strftime('%H %M %S %f', '2022-03-08 18:54:10.590246')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:54:11.233625') AND strftime('%H %M %S %f', '2022-03-08 18:54:20.580610')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:54:34.280725') AND strftime('%H %M %S %f', '2022-03-08 18:54:43.520644')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:54:48.742892') AND strftime('%H %M %S %f', '2022-03-08 18:54:58.949927');
