-- For C Subtract Print1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:34:56.348645') AND strftime('%H %M %S %f', '2022-02-08 17:35:14.517419')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:35:33.686170') AND strftime('%H %M %S %f', '2022-02-08 17:35:44.517884')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:36:13.652967') AND strftime('%H %M %S %f', '2022-02-08 17:36:24.244727')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:36:39.333398') AND strftime('%H %M %S %f', '2022-02-08 17:36:50.224630')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:37:24.099891') AND strftime('%H %M %S %f', '2022-02-08 17:37:34.528923')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:34:56.348645') AND strftime('%H %M %S %f', '2022-02-08 17:35:14.517419')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:35:33.686170') AND strftime('%H %M %S %f', '2022-02-08 17:35:44.517884')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:36:13.652967') AND strftime('%H %M %S %f', '2022-02-08 17:36:24.244727')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:36:39.333398') AND strftime('%H %M %S %f', '2022-02-08 17:36:50.224630')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:37:24.099891') AND strftime('%H %M %S %f', '2022-02-08 17:37:34.528923');
