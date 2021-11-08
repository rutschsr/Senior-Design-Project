--For PythonAddPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:53.851945') AND strftime('%H %M %S %f', '2021-11-01 17:07:51.344222')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:08:28.513860') AND strftime('%H %M %S %f', '2021-11-01 17:09:27.972876')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:09:37.240930') AND strftime('%H %M %S %f', '2021-11-01 17:10:36.409262')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:53.851945') AND strftime('%H %M %S %f', '2021-11-01 17:07:51.344222')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:08:28.513860') AND strftime('%H %M %S %f', '2021-11-01 17:09:27.972876')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:09:37.240930') AND strftime('%H %M %S %f', '2021-11-01 17:10:36.409262');