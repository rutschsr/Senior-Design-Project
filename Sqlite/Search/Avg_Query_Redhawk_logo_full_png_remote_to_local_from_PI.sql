-- For Redhawk logo full png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:35:48.104648') AND strftime('%H %M %S %f', '2022-03-08 18:35:56.075649')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:35:58.844123') AND strftime('%H %M %S %f', '2022-03-08 18:36:06.773731')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:11.504394') AND strftime('%H %M %S %f', '2022-03-08 18:36:18.700773')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:23.291825') AND strftime('%H %M %S %f', '2022-03-08 18:36:31.089563')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:36.283072') AND strftime('%H %M %S %f', '2022-03-08 18:36:45.003679')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:50.430360') AND strftime('%H %M %S %f', '2022-03-08 18:36:58.159108')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:35:48.104648') AND strftime('%H %M %S %f', '2022-03-08 18:35:56.075649')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:35:58.844123') AND strftime('%H %M %S %f', '2022-03-08 18:36:06.773731')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:11.504394') AND strftime('%H %M %S %f', '2022-03-08 18:36:18.700773')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:23.291825') AND strftime('%H %M %S %f', '2022-03-08 18:36:31.089563')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:36.283072') AND strftime('%H %M %S %f', '2022-03-08 18:36:45.003679')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:36:50.430360') AND strftime('%H %M %S %f', '2022-03-08 18:36:58.159108');
