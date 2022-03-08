-- For M Full PNG from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:49:55.491763') AND strftime('%H %M %S %f', '2022-03-01 17:50:04.051957')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:07.799244') AND strftime('%H %M %S %f', '2022-03-01 17:50:15.241966')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:22.122230') AND strftime('%H %M %S %f', '2022-03-01 17:50:30.408325')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:35.929176') AND strftime('%H %M %S %f', '2022-03-01 17:50:44.108815')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:53.840398') AND strftime('%H %M %S %f', '2022-03-01 17:51:02.110179')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:49:55.491763') AND strftime('%H %M %S %f', '2022-03-01 17:50:04.051957')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:07.799244') AND strftime('%H %M %S %f', '2022-03-01 17:50:15.241966')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:22.122230') AND strftime('%H %M %S %f', '2022-03-01 17:50:30.408325')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:35.929176') AND strftime('%H %M %S %f', '2022-03-01 17:50:44.108815')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:50:53.840398') AND strftime('%H %M %S %f', '2022-03-01 17:51:02.110179');
