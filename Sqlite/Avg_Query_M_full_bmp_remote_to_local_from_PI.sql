-- For M Full bmp Remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:10.907228') AND strftime('%H %M %S %f', '2022-03-08 17:18:18.172836')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:20.516488') AND strftime('%H %M %S %f', '2022-03-08 17:18:28.338742')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:31.013066') AND strftime('%H %M %S %f', '2022-03-08 17:18:38.959523')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:41.658797') AND strftime('%H %M %S %f', '2022-03-08 17:18:49.686300')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:54.090155') AND strftime('%H %M %S %f', '2022-03-08 17:19:02.075924')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:19:08.101381') AND strftime('%H %M %S %f', '2022-03-08 17:19:16.194364')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:10.907228') AND strftime('%H %M %S %f', '2022-03-08 17:18:18.172836')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:20.516488') AND strftime('%H %M %S %f', '2022-03-08 17:18:28.338742')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:31.013066') AND strftime('%H %M %S %f', '2022-03-08 17:18:38.959523')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:41.658797') AND strftime('%H %M %S %f', '2022-03-08 17:18:49.686300')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:18:54.090155') AND strftime('%H %M %S %f', '2022-03-08 17:19:02.075924')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:19:08.101381') AND strftime('%H %M %S %f', '2022-03-08 17:19:16.194364');