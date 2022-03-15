-- For Redhawk logo full bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:24:31.028532') AND strftime('%H %M %S %f', '2022-03-08 19:24:44.262745')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:24:53.354972') AND strftime('%H %M %S %f', '2022-03-08 19:25:06.330540')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:25:12.461772') AND strftime('%H %M %S %f', '2022-03-08 19:25:25.343719')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:25:29.255337') AND strftime('%H %M %S %f', '2022-03-08 19:25:41.931689')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:24:31.028532') AND strftime('%H %M %S %f', '2022-03-08 19:24:44.262745')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:24:53.354972') AND strftime('%H %M %S %f', '2022-03-08 19:25:06.330540')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:25:12.461772') AND strftime('%H %M %S %f', '2022-03-08 19:25:25.343719')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:25:29.255337') AND strftime('%H %M %S %f', '2022-03-08 19:25:41.931689');