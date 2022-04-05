-- For 44mb onPI from PC

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 18:18:21.148270') AND strftime('%H %M %S %f', '2022-03-29 18:19:37.855221')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 18:19:43.621800') AND strftime('%H %M %S %f', '2022-03-29 18:20:58.009915')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 18:21:03.190583') AND strftime('%H %M %S %f', '2022-03-29 18:22:19.868681')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 18:22:41.531371') AND strftime('%H %M %S %f', '2022-03-29 18:24:03.987928')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 18:18:21.148270') AND strftime('%H %M %S %f', '2022-03-29 18:19:37.855221')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 18:19:43.621800') AND strftime('%H %M %S %f', '2022-03-29 18:20:58.009915')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 18:21:03.190583') AND strftime('%H %M %S %f', '2022-03-29 18:22:19.868681')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 18:22:41.531371') AND strftime('%H %M %S %f', '2022-03-29 18:24:03.987928');