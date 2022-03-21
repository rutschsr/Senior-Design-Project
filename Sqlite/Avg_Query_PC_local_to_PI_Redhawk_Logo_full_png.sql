-- For PC local to PI Redhawk logo full png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:33:43.570157') AND strftime('%H %M %S %f', '2022-03-15 18:33:55.809165')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:33:58.765802') AND strftime('%H %M %S %f', '2022-03-15 18:34:10.708998')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:34:13.191142') AND strftime('%H %M %S %f', '2022-03-15 18:34:25.265950')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:34:27.870881') AND strftime('%H %M %S %f', '2022-03-15 18:34:40.043806')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:34:47.010012') AND strftime('%H %M %S %f', '2022-03-15 18:34:59.425171')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:35:02.685337') AND strftime('%H %M %S %f', '2022-03-15 18:35:14.771522')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:35:31.147119') AND strftime('%H %M %S %f', '2022-03-15 18:35:43.811500')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:33:43.570157') AND strftime('%H %M %S %f', '2022-03-15 18:33:55.809165')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:33:58.765802') AND strftime('%H %M %S %f', '2022-03-15 18:34:10.708998')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:34:13.191142') AND strftime('%H %M %S %f', '2022-03-15 18:34:25.265950')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:34:27.870881') AND strftime('%H %M %S %f', '2022-03-15 18:34:40.043806')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:34:47.010012') AND strftime('%H %M %S %f', '2022-03-15 18:34:59.425171')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:35:02.685337') AND strftime('%H %M %S %f', '2022-03-15 18:35:14.771522')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:35:31.147119') AND strftime('%H %M %S %f', '2022-03-15 18:35:43.811500');