-- For Peter Jamieson 2015 full png local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:11:31.086467') AND strftime('%H %M %S %f', '2022-03-08 19:11:43.681262')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:12:25.921147') AND strftime('%H %M %S %f', '2022-03-08 19:12:37.791396')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:12:50.619156') AND strftime('%H %M %S %f', '2022-03-08 19:13:02.622990')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:13:05.310421') AND strftime('%H %M %S %f', '2022-03-08 19:13:17.262113')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:13:22.729645') AND strftime('%H %M %S %f', '2022-03-08 19:13:34.833128')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:11:31.086467') AND strftime('%H %M %S %f', '2022-03-08 19:11:43.681262')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:12:25.921147') AND strftime('%H %M %S %f', '2022-03-08 19:12:37.791396')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:12:50.619156') AND strftime('%H %M %S %f', '2022-03-08 19:13:02.622990')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:13:05.310421') AND strftime('%H %M %S %f', '2022-03-08 19:13:17.262113')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:13:22.729645') AND strftime('%H %M %S %f', '2022-03-08 19:13:34.833128');
