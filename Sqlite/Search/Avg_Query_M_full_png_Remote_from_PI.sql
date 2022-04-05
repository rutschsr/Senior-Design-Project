-- For M Full PNG Remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:37:56.609053') AND strftime('%H %M %S %f', '2022-03-01 17:38:08.999209')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:38:13.577881') AND strftime('%H %M %S %f', '2022-03-01 17:38:26.037386')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:38:35.810133') AND strftime('%H %M %S %f', '2022-03-01 17:38:48.212202')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:38:58.529597') AND strftime('%H %M %S %f', '2022-03-01 17:39:10.919516')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:39:16.452708') AND strftime('%H %M %S %f', '2022-03-01 17:39:28.866387')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:39:37.713728') AND strftime('%H %M %S %f', '2022-03-01 17:39:50.116116')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:37:56.609053') AND strftime('%H %M %S %f', '2022-03-01 17:38:08.999209')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:38:13.577881') AND strftime('%H %M %S %f', '2022-03-01 17:38:26.037386')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:38:35.810133') AND strftime('%H %M %S %f', '2022-03-01 17:38:48.212202')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:38:58.529597') AND strftime('%H %M %S %f', '2022-03-01 17:39:10.919516')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:39:16.452708') AND strftime('%H %M %S %f', '2022-03-01 17:39:28.866387')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:39:37.713728') AND strftime('%H %M %S %f', '2022-03-01 17:39:50.116116');
