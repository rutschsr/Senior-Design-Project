-- For Peter Jamieson 2015 double png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:08:32.710609') AND strftime('%H %M %S %f', '2022-03-08 18:08:51.138224')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:08:56.372263') AND strftime('%H %M %S %f', '2022-03-08 18:09:16.146687')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:09:20.386246') AND strftime('%H %M %S %f', '2022-03-08 18:09:39.971922')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:09:46.348902') AND strftime('%H %M %S %f', '2022-03-08 18:10:06.262789')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:10:14.143714') AND strftime('%H %M %S %f', '2022-03-08 18:10:32.857520')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:08:32.710609') AND strftime('%H %M %S %f', '2022-03-08 18:08:51.138224')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:08:56.372263') AND strftime('%H %M %S %f', '2022-03-08 18:09:16.146687')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:09:20.386246') AND strftime('%H %M %S %f', '2022-03-08 18:09:39.971922')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:09:46.348902') AND strftime('%H %M %S %f', '2022-03-08 18:10:06.262789')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:10:14.143714') AND strftime('%H %M %S %f', '2022-03-08 18:10:32.857520');
