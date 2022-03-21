-- For PC remote from PI Peter Jamieson Double png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:51:46.987618') AND strftime('%H %M %S %f', '2022-03-15 18:52:12.856582')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:52:16.809667') AND strftime('%H %M %S %f', '2022-03-15 18:52:43.006630')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:52:46.307942') AND strftime('%H %M %S %f', '2022-03-15 18:53:12.475365')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:53:18.992085') AND strftime('%H %M %S %f', '2022-03-15 18:53:44.820598')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:51:46.987618') AND strftime('%H %M %S %f', '2022-03-15 18:52:12.856582')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:52:16.809667') AND strftime('%H %M %S %f', '2022-03-15 18:52:43.006630')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:52:46.307942') AND strftime('%H %M %S %f', '2022-03-15 18:53:12.475365')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:53:18.992085') AND strftime('%H %M %S %f', '2022-03-15 18:53:44.820598');