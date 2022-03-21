-- For PC remote from PI Redhawk Logo double bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:08:07.997664') AND strftime('%H %M %S %f', '2022-03-15 19:08:38.720677')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:08:40.944712') AND strftime('%H %M %S %f', '2022-03-15 19:09:12.330971')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:09:18.208722') AND strftime('%H %M %S %f', '2022-03-15 19:09:49.229975')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:09:54.644275') AND strftime('%H %M %S %f', '2022-03-15 19:10:24.707292')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:08:07.997664') AND strftime('%H %M %S %f', '2022-03-15 19:08:38.720677')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:08:40.944712') AND strftime('%H %M %S %f', '2022-03-15 19:09:12.330971')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:09:18.208722') AND strftime('%H %M %S %f', '2022-03-15 19:09:49.229975')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:09:54.644275') AND strftime('%H %M %S %f', '2022-03-15 19:10:24.707292');