--For 10ms500pingPrintout

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-10-28 16:26:43.401753') AND strftime('%H %M %S %f', '2021-10-28 16:26:53.596974')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:20:39.877767') AND strftime('%H %M %S %f', '2021-11-01 16:20:50.047883')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:21:05.803709') AND strftime('%H %M %S %f', '2021-11-01 16:21:15.834523')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:21:29.858870') AND strftime('%H %M %S %f', '2021-11-01 16:21:39.864555')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:21:54.490609') AND strftime('%H %M %S %f', '2021-11-01 16:22:04.509192')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:22:12.250444') AND strftime('%H %M %S %f', '2021-11-01 16:22:22.731410')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:22:38.651903') AND strftime('%H %M %S %f', '2021-11-01 16:22:48.903588')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:23:05.380560') AND strftime('%H %M %S %f', '2021-11-01 16:23:15.575262')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:23:19.216328') AND strftime('%H %M %S %f', '2021-11-01 16:23:29.492682')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-10-28 16:26:43.401753') AND strftime('%H %M %S %f', '2021-10-28 16:26:53.596974')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:20:39.877767') AND strftime('%H %M %S %f', '2021-11-01 16:20:50.047883')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:21:05.803709') AND strftime('%H %M %S %f', '2021-11-01 16:21:15.834523')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:21:29.858870') AND strftime('%H %M %S %f', '2021-11-01 16:21:39.864555')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:21:54.490609') AND strftime('%H %M %S %f', '2021-11-01 16:22:04.509192')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:22:12.250444') AND strftime('%H %M %S %f', '2021-11-01 16:22:22.731410')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:22:38.651903') AND strftime('%H %M %S %f', '2021-11-01 16:22:48.903588')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:23:05.380560') AND strftime('%H %M %S %f', '2021-11-01 16:23:15.575262')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:23:19.216328') AND strftime('%H %M %S %f', '2021-11-01 16:23:29.492682');