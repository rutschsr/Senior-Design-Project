-- For Peter Jamieson 2015 double png local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:04:35.453312') AND strftime('%H %M %S %f', '2022-03-08 19:04:58.393716')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:05:11.152978') AND strftime('%H %M %S %f', '2022-03-08 19:05:32.594513')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:05:38.262351') AND strftime('%H %M %S %f', '2022-03-08 19:06:00.371550')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:06:04.676579') AND strftime('%H %M %S %f', '2022-03-08 19:06:26.555930')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:06:30.983915') AND strftime('%H %M %S %f', '2022-03-08 19:06:52.834636')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:04:35.453312') AND strftime('%H %M %S %f', '2022-03-08 19:04:58.393716')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:05:11.152978') AND strftime('%H %M %S %f', '2022-03-08 19:05:32.594513')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:05:38.262351') AND strftime('%H %M %S %f', '2022-03-08 19:06:00.371550')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:06:04.676579') AND strftime('%H %M %S %f', '2022-03-08 19:06:26.555930')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:06:30.983915') AND strftime('%H %M %S %f', '2022-03-08 19:06:52.834636');
