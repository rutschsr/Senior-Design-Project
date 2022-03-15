-- For Peter Jamieson 2015 bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:00:14.882967') AND strftime('%H %M %S %f', '2022-03-08 19:01:03.438441')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:01:07.731341') AND strftime('%H %M %S %f', '2022-03-08 19:01:56.979332')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:02:56.478409') AND strftime('%H %M %S %f', '2022-03-08 19:03:43.817656')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:02:02.950696') AND strftime('%H %M %S %f', '2022-03-08 18:07:06.654093')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:00:14.882967') AND strftime('%H %M %S %f', '2022-03-08 19:01:03.438441')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:01:07.731341') AND strftime('%H %M %S %f', '2022-03-08 19:01:56.979332')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:02:56.478409') AND strftime('%H %M %S %f', '2022-03-08 19:03:43.817656')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:02:02.950696') AND strftime('%H %M %S %f', '2022-03-08 19:02:51.584418');
