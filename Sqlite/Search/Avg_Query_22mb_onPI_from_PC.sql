-- For 22mb onPI from PC

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 18:28:38.811505') AND strftime('%H %M %S %f', '2022-03-29 18:29:20.219376')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 18:29:33.142253') AND strftime('%H %M %S %f', '2022-03-29 18:30:18.065072')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 18:30:28.492003') AND strftime('%H %M %S %f', '2022-03-29 18:31:11.355291')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 18:28:38.811505') AND strftime('%H %M %S %f', '2022-03-29 18:29:20.219376')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 18:29:33.142253') AND strftime('%H %M %S %f', '2022-03-29 18:30:18.065072')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 18:30:28.492003') AND strftime('%H %M %S %f', '2022-03-29 18:31:11.355291');