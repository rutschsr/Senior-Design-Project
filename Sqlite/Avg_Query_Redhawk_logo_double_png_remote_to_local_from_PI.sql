-- For Redhawk logo double png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:30:32.011910') AND strftime('%H %M %S %f', '2022-03-08 18:30:42.001866')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:30:48.763866') AND strftime('%H %M %S %f', '2022-03-08 18:30:58.478578')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:31:03.262201') AND strftime('%H %M %S %f', '2022-03-08 18:31:13.105218')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:31:21.051260') AND strftime('%H %M %S %f', '2022-03-08 18:31:30.577206')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:31:34.775666') AND strftime('%H %M %S %f', '2022-03-08 18:31:44.400832')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:30:32.011910') AND strftime('%H %M %S %f', '2022-03-08 18:30:42.001866')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:30:48.763866') AND strftime('%H %M %S %f', '2022-03-08 18:30:58.478578')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:31:03.262201') AND strftime('%H %M %S %f', '2022-03-08 18:31:13.105218')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:31:21.051260') AND strftime('%H %M %S %f', '2022-03-08 18:31:30.577206')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:31:34.775666') AND strftime('%H %M %S %f', '2022-03-08 18:31:44.400832');
