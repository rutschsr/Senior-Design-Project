-- For PC local to PI Redhawk logo half bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:22:08.828843') AND strftime('%H %M %S %f', '2022-03-15 18:22:24.912750')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:22:36.802854') AND strftime('%H %M %S %f', '2022-03-15 18:22:52.669735')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:23:00.427061') AND strftime('%H %M %S %f', '2022-03-15 18:23:16.044405')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:23:19.125105') AND strftime('%H %M %S %f', '2022-03-15 18:23:35.045702')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:23:43.388574') AND strftime('%H %M %S %f', '2022-03-15 18:23:58.956953')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:22:08.828843') AND strftime('%H %M %S %f', '2022-03-15 18:22:24.912750')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:22:36.802854') AND strftime('%H %M %S %f', '2022-03-15 18:22:52.669735')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:23:00.427061') AND strftime('%H %M %S %f', '2022-03-15 18:23:16.044405')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:23:19.125105') AND strftime('%H %M %S %f', '2022-03-15 18:23:35.045702')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:23:43.388574') AND strftime('%H %M %S %f', '2022-03-15 18:23:58.956953');