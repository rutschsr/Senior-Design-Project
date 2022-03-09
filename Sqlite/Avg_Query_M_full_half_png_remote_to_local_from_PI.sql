-- For M Full half png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:45:59.791952') AND strftime('%H %M %S %f', '2022-03-08 17:46:07.655849')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:46:21.028271') AND strftime('%H %M %S %f', '2022-03-08 17:46:28.810710')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:46:34.987032') AND strftime('%H %M %S %f', '2022-03-08 17:46:43.256346')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:46:47.986952') AND strftime('%H %M %S %f', '2022-03-08 17:46:56.137688')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:47:02.420273') AND strftime('%H %M %S %f', '2022-03-08 17:47:10.272120')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:45:59.791952') AND strftime('%H %M %S %f', '2022-03-08 17:46:07.655849')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:46:21.028271') AND strftime('%H %M %S %f', '2022-03-08 17:46:28.810710')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:46:34.987032') AND strftime('%H %M %S %f', '2022-03-08 17:46:43.256346')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:46:47.986952') AND strftime('%H %M %S %f', '2022-03-08 17:46:56.137688')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:47:02.420273') AND strftime('%H %M %S %f', '2022-03-08 17:47:10.272120');
