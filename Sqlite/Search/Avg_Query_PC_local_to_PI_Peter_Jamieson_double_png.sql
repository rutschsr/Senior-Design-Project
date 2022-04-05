-- For PC local to PI Peter Jamieson double png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:42:24.626363') AND strftime('%H %M %S %f', '2022-03-15 17:42:47.890032')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:42:57.798399') AND strftime('%H %M %S %f', '2022-03-15 17:43:20.972028')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:43:36.175692') AND strftime('%H %M %S %f', '2022-03-15 17:43:58.845469')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:44:01.447218') AND strftime('%H %M %S %f', '2022-03-15 17:44:23.585063')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:44:30.026909') AND strftime('%H %M %S %f', '2022-03-15 17:44:53.553673')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:44:57.834428') AND strftime('%H %M %S %f', '2022-03-15 17:45:20.639584')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:42:24.626363') AND strftime('%H %M %S %f', '2022-03-15 17:42:47.890032')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:42:57.798399') AND strftime('%H %M %S %f', '2022-03-15 17:43:20.972028')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:43:36.175692') AND strftime('%H %M %S %f', '2022-03-15 17:43:58.845469')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:44:01.447218') AND strftime('%H %M %S %f', '2022-03-15 17:44:23.585063')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:44:30.026909') AND strftime('%H %M %S %f', '2022-03-15 17:44:53.553673')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:44:57.834428') AND strftime('%H %M %S %f', '2022-03-15 17:45:20.639584');