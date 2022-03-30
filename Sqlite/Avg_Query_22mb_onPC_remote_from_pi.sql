-- For 22mb onPC remote from pi

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:21:19.742187') AND strftime('%H %M %S %f', '2022-03-29 17:22:06.528692')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:22:15.294373') AND strftime('%H %M %S %f', '2022-03-29 17:23:06.131283')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:23:13.016478') AND strftime('%H %M %S %f', '2022-03-29 17:24:02.530557')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 17:24:15.304683') AND strftime('%H %M %S %f', '2022-03-29 17:25:12.359532')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:21:19.742187') AND strftime('%H %M %S %f', '2022-03-29 17:22:06.528692')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:22:15.294373') AND strftime('%H %M %S %f', '2022-03-29 17:23:06.131283')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:23:13.016478') AND strftime('%H %M %S %f', '2022-03-29 17:24:02.530557')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 17:24:15.304683') AND strftime('%H %M %S %f', '2022-03-29 17:25:12.359532');