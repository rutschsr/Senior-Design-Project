-- For PC remote from PI Peter Jamieson full bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:55:10.454887') AND strftime('%H %M %S %f', '2022-03-15 18:55:33.220008')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:55:38.887770') AND strftime('%H %M %S %f', '2022-03-15 18:56:01.460009')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:56:04.351820') AND strftime('%H %M %S %f', '2022-03-15 18:56:26.801266')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:56:31.093208') AND strftime('%H %M %S %f', '2022-03-15 18:56:53.104310')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:57:00.673329') AND strftime('%H %M %S %f', '2022-03-15 18:57:23.064980')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:55:10.454887') AND strftime('%H %M %S %f', '2022-03-15 18:55:33.220008')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:55:38.887770') AND strftime('%H %M %S %f', '2022-03-15 18:56:01.460009')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:56:04.351820') AND strftime('%H %M %S %f', '2022-03-15 18:56:26.801266')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:56:31.093208') AND strftime('%H %M %S %f', '2022-03-15 18:56:53.104310')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:57:00.673329') AND strftime('%H %M %S %f', '2022-03-15 18:57:23.064980');