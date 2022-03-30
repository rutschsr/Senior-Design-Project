-- For 22mb onPC remote from pi

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:08:43.310551') AND strftime('%H %M %S %f', '2022-03-29 17:09:54.945862')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:10:02.924882') AND strftime('%H %M %S %f', '2022-03-29 17:11:12.799480')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:11:18.618696') AND strftime('%H %M %S %f', '2022-03-29 17:12:20.658092')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:08:43.310551') AND strftime('%H %M %S %f', '2022-03-29 17:09:54.945862')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:10:02.924882') AND strftime('%H %M %S %f', '2022-03-29 17:11:12.799480')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:11:18.618696') AND strftime('%H %M %S %f', '2022-03-29 17:12:20.658092');