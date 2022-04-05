-- For M Full half png Remote to PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:14:55.453761') AND strftime('%H %M %S %f', '2022-03-01 17:15:06.755093')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:15:14.049634') AND strftime('%H %M %S %f', '2022-03-01 17:15:26.501655')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:15:34.369684') AND strftime('%H %M %S %f', '2022-03-01 17:15:46.796206')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:15:58.382763') AND strftime('%H %M %S %f', '2022-03-01 17:16:10.826226')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:16:34.937888') AND strftime('%H %M %S %f', '2022-03-01 17:16:47.353051')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:16:54.004347') AND strftime('%H %M %S %f', '2022-03-01 17:17:06.418011')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:17:26.877154') AND strftime('%H %M %S %f', '2022-03-01 17:17:39.308016')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:17:47.281929') AND strftime('%H %M %S %f', '2022-03-01 17:17:59.737865')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:14:55.453761') AND strftime('%H %M %S %f', '2022-03-01 17:15:06.755093')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:15:14.049634') AND strftime('%H %M %S %f', '2022-03-01 17:15:26.501655')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:15:34.369684') AND strftime('%H %M %S %f', '2022-03-01 17:15:46.796206')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:15:58.382763') AND strftime('%H %M %S %f', '2022-03-01 17:16:10.826226')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:16:34.937888') AND strftime('%H %M %S %f', '2022-03-01 17:16:47.353051')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:16:54.004347') AND strftime('%H %M %S %f', '2022-03-01 17:17:06.418011')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:17:26.877154') AND strftime('%H %M %S %f', '2022-03-01 17:17:39.308016')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:17:47.281929') AND strftime('%H %M %S %f', '2022-03-01 17:17:59.737865');
