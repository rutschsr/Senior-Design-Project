-- For 44mb onPI to PC

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:54:19.736505') AND strftime('%H %M %S %f', '2022-03-29 17:55:34.820736')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:55:42.004734') AND strftime('%H %M %S %f', '2022-03-29 17:57:18.121038')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:57:44.583273') AND strftime('%H %M %S %f', '2022-03-29 17:59:25.729062')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:59:42.824667') AND strftime('%H %M %S %f', '2022-03-29 18:01:18.080682')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:54:19.736505') AND strftime('%H %M %S %f', '2022-03-29 17:55:34.820736')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:55:42.004734') AND strftime('%H %M %S %f', '2022-03-29 17:57:18.121038')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:57:44.583273') AND strftime('%H %M %S %f', '2022-03-29 17:59:25.729062')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:59:42.824667') AND strftime('%H %M %S %f', '2022-03-29 18:01:18.080682');