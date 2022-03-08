--For PythonSubtractNoPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:20:48.969167') AND strftime('%H %M %S %f', '2021-11-01 17:20:50.615583')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:20:56.628139') AND strftime('%H %M %S %f', '2021-11-01 17:20:58.237990')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:21:02.554653') AND strftime('%H %M %S %f', '2021-11-01 17:21:04.246565')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:21:04.439013')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:20:48.969167') AND strftime('%H %M %S %f', '2021-11-01 17:20:50.615583')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:20:56.628139') AND strftime('%H %M %S %f', '2021-11-01 17:20:58.237990')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:21:02.554653') AND strftime('%H %M %S %f', '2021-11-01 17:21:04.246565')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:21:04.439013');

