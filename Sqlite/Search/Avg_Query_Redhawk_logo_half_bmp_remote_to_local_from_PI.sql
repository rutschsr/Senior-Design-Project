-- For Redhawk logo half bmp remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:42:39.359058') AND strftime('%H %M %S %f', '2022-03-08 18:42:48.394975')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:42:54.419282') AND strftime('%H %M %S %f', '2022-03-08 18:43:03.307146')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:43:05.514826') AND strftime('%H %M %S %f', '2022-03-08 18:43:14.593483')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:43:15.914494') AND strftime('%H %M %S %f', '2022-03-08 18:43:25.265068')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:43:30.400893') AND strftime('%H %M %S %f', '2022-03-08 18:43:39.506742')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:42:39.359058') AND strftime('%H %M %S %f', '2022-03-08 18:42:48.394975')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:42:54.419282') AND strftime('%H %M %S %f', '2022-03-08 18:43:03.307146')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:43:05.514826') AND strftime('%H %M %S %f', '2022-03-08 18:43:14.593483')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:43:15.914494') AND strftime('%H %M %S %f', '2022-03-08 18:43:25.265068')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:43:30.400893') AND strftime('%H %M %S %f', '2022-03-08 18:43:39.506742');