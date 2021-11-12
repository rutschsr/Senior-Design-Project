-- For PythonMultiplyPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:29.951804') AND strftime('%H %M %S %f', '2021-11-01 17:27:30.824137')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:31.000712') AND strftime('%H %M %S %f', '2021-11-01 17:27:32.810544')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:32.974555') AND strftime('%H %M %S %f', '2021-11-01 17:27:33.929148')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:35.018714') AND strftime('%H %M %S %f', '2021-11-01 17:27:35.837845')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:36.071156') AND strftime('%H %M %S %f', '2021-11-01 17:27:36.943194')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:37.799731') AND strftime('%H %M %S %f', '2021-11-01 17:27:39.490799')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:27:39.925295')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:29.951804') AND strftime('%H %M %S %f', '2021-11-01 17:27:30.824137')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:31.000712') AND strftime('%H %M %S %f', '2021-11-01 17:27:32.810544')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:32.974555') AND strftime('%H %M %S %f', '2021-11-01 17:27:33.929148')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:35.018714') AND strftime('%H %M %S %f', '2021-11-01 17:27:35.837845')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:36.071156') AND strftime('%H %M %S %f', '2021-11-01 17:27:36.943194')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:27:37.799731') AND strftime('%H %M %S %f', '2021-11-01 17:27:39.490799')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:27:39.925295');