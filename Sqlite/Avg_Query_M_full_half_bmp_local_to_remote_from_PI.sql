-- For M full half bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:55:47.685082') AND strftime('%H %M %S %f', '2022-03-08 18:55:56.016664')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:55:56.860356') AND strftime('%H %M %S %f', '2022-03-08 18:56:05.281065')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:56:23.027862') AND strftime('%H %M %S %f', '2022-03-08 18:56:31.412640')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:56:09.617988') AND strftime('%H %M %S %f', '2022-03-08 18:56:18.121606')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:56:38.129726') AND strftime('%H %M %S %f', '2022-03-08 18:56:46.525698')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:55:47.685082') AND strftime('%H %M %S %f', '2022-03-08 18:55:56.016664')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:55:56.860356') AND strftime('%H %M %S %f', '2022-03-08 18:56:05.281065')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:56:23.027862') AND strftime('%H %M %S %f', '2022-03-08 18:56:31.412640')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:56:09.617988') AND strftime('%H %M %S %f', '2022-03-08 18:56:18.121606')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:56:38.129726') AND strftime('%H %M %S %f', '2022-03-08 18:56:46.525698');
