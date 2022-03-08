--For PythonAddPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:53.851945') AND strftime('%H %M %S %f', '2021-11-01 17:06:32.327903')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:06:32.766096')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:53.851945') AND strftime('%H %M %S %f', '2021-11-01 17:06:32.327903')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:06:32.766096');