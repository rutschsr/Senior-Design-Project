-- For PythonSubtractPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:13:15.833993') AND strftime('%H %M %S %f', '2021-11-01 17:14:17.705850')
	AND strftime('%H %M %S %f', date) &lt; strftime('%H %M %S %f', '2021-11-01 17:14:18.073674')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:13:15.833993') AND strftime('%H %M %S %f', '2021-11-01 17:14:17.705850')
	AND strftime('%H %M %S %f', date) &lt; strftime('%H %M %S %f', '2021-11-01 17:14:18.073674');
