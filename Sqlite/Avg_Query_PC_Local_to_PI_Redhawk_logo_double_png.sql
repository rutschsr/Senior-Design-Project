-- For PC local to PI Redhawk logo double png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:17:59.910464') AND strftime('%H %M %S %f', '2022-03-15 18:18:13.611067')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:18:19.390080') AND strftime('%H %M %S %f', '2022-03-15 18:18:33.102849')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:18:39.291411') AND strftime('%H %M %S %f', '2022-03-15 18:18:53.139928')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:18:54.626307') AND strftime('%H %M %S %f', '2022-03-15 18:19:09.813953')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:19:25.369604') AND strftime('%H %M %S %f', '2022-03-15 18:19:38.999659')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:17:59.910464') AND strftime('%H %M %S %f', '2022-03-15 18:18:13.611067')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:18:19.390080') AND strftime('%H %M %S %f', '2022-03-15 18:18:33.102849')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:18:39.291411') AND strftime('%H %M %S %f', '2022-03-15 18:18:53.139928')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:18:54.626307') AND strftime('%H %M %S %f', '2022-03-15 18:19:09.813953')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:19:25.369604') AND strftime('%H %M %S %f', '2022-03-15 18:19:38.999659');