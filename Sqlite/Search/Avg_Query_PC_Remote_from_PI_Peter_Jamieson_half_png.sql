-- For PC remote from PI Peter Jamieson half png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:04:49.990002') AND strftime('%H %M %S %f', '2022-03-15 19:05:03.306175')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:05:06.414327') AND strftime('%H %M %S %f', '2022-03-15 19:05:19.759277')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:05:24.801427') AND strftime('%H %M %S %f', '2022-03-15 19:05:38.759148')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:05:49.367760') AND strftime('%H %M %S %f', '2022-03-15 19:06:02.793929')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:04:49.990002') AND strftime('%H %M %S %f', '2022-03-15 19:05:03.306175')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:05:06.414327') AND strftime('%H %M %S %f', '2022-03-15 19:05:19.759277')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:05:24.801427') AND strftime('%H %M %S %f', '2022-03-15 19:05:38.759148')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:05:49.367760') AND strftime('%H %M %S %f', '2022-03-15 19:06:02.793929');