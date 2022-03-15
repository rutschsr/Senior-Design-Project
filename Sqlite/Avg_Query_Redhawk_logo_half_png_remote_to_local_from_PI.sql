-- For Redhawk logo half png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:23.671085') AND strftime('%H %M %S %f', '2022-03-08 18:44:31.986198')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:35.053810') AND strftime('%H %M %S %f', '2022-03-08 18:44:43.404904')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:48.299248') AND strftime('%H %M %S %f', '2022-03-08 18:44:56.355719')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:59.640932') AND strftime('%H %M %S %f', '2022-03-08 18:45:08.225317')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:45:11.767816') AND strftime('%H %M %S %f', '2022-03-08 18:45:20.222030')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:45:28.560641') AND strftime('%H %M %S %f', '2022-03-08 18:45:36.683057')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:23.671085') AND strftime('%H %M %S %f', '2022-03-08 18:44:31.986198')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:35.053810') AND strftime('%H %M %S %f', '2022-03-08 18:44:43.404904')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:48.299248') AND strftime('%H %M %S %f', '2022-03-08 18:44:56.355719')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:44:59.640932') AND strftime('%H %M %S %f', '2022-03-08 18:45:08.225317')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:45:11.767816') AND strftime('%H %M %S %f', '2022-03-08 18:45:20.222030')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:45:28.560641') AND strftime('%H %M %S %f', '2022-03-08 18:45:36.683057');