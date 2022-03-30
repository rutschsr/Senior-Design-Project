-- For 22mb onPI to PC

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:46:49.333926') AND strftime('%H %M %S %f', '2022-03-29 17:47:31.463689')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:47:43.091042') AND strftime('%H %M %S %f', '2022-03-29 17:48:24.417524')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:48:34.096887') AND strftime('%H %M %S %f', '2022-03-29 17:49:32.363613')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:49:37.204543') AND strftime('%H %M %S %f', '2022-03-29 17:50:36.630893')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:50:52.432234') AND strftime('%H %M %S %f', '2022-03-29 17:51:49.036069')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:46:49.333926') AND strftime('%H %M %S %f', '2022-03-29 17:47:31.463689')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:47:43.091042') AND strftime('%H %M %S %f', '2022-03-29 17:48:24.417524')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:48:34.096887') AND strftime('%H %M %S %f', '2022-03-29 17:49:32.363613')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:49:37.204543') AND strftime('%H %M %S %f', '2022-03-29 17:50:36.630893')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:50:52.432234') AND strftime('%H %M %S %f', '2022-03-29 17:51:49.036069');