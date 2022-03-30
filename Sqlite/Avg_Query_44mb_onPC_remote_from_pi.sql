-- For 44mb onPC remote from pi

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:28:53.007783') AND strftime('%H %M %S %f', '2022-03-29 17:30:18.163719')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:30:31.999594') AND strftime('%H %M %S %f', '2022-03-29 17:32:08.234732')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:36:34.644917') AND strftime('%H %M %S %f', '2022-03-29 17:37:57.822400')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:38:06.357891') AND strftime('%H %M %S %f', '2022-03-29 17:39:39.868966')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:28:53.007783') AND strftime('%H %M %S %f', '2022-03-29 17:30:18.163719')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:30:31.999594') AND strftime('%H %M %S %f', '2022-03-29 17:32:08.234732')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:36:34.644917') AND strftime('%H %M %S %f', '2022-03-29 17:37:57.822400')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:38:06.357891') AND strftime('%H %M %S %f', '2022-03-29 17:39:39.868966');