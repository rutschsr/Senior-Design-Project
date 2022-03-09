-- For M Full double bmp Remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:38:36.778162') AND strftime('%H %M %S %f', '2022-03-08 17:38:45.363373')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:38:50.204768') AND strftime('%H %M %S %f', '2022-03-08 17:38:59.146081')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:39:06.873952') AND strftime('%H %M %S %f', '2022-03-08 17:39:16.048685')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:39:22.127174') AND strftime('%H %M %S %f', '2022-03-08 17:39:30.670775')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:39:36.806797') AND strftime('%H %M %S %f', '2022-03-08 17:39:45.882674')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:38:36.778162') AND strftime('%H %M %S %f', '2022-03-08 17:38:45.363373')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:38:50.204768') AND strftime('%H %M %S %f', '2022-03-08 17:38:59.146081')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:39:06.873952') AND strftime('%H %M %S %f', '2022-03-08 17:39:16.048685')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:39:22.127174') AND strftime('%H %M %S %f', '2022-03-08 17:39:30.670775')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:39:36.806797') AND strftime('%H %M %S %f', '2022-03-08 17:39:45.882674');
