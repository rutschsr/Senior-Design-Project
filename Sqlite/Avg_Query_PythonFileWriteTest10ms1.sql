--For PythonFileWriteTest10ms1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-10-28 16:56:07.519226') AND strftime('%H %M %S %f', '2021-10-28 16:56:29.550383')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-10-28 16:56:07.519226') AND strftime('%H %M %S %f', '2021-10-28 16:56:29.550383');
