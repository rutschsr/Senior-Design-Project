-- For M Full double png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:07.573815') AND strftime('%H %M %S %f', '2022-03-08 17:41:15.641985')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:20.549106') AND strftime('%H %M %S %f', '2022-03-08 17:41:28.685836')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:36.334354') AND strftime('%H %M %S %f', '2022-03-08 17:41:44.579053')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:52.565542') AND strftime('%H %M %S %f', '2022-03-08 17:42:00.483157')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:42:06.098617') AND strftime('%H %M %S %f', '2022-03-08 17:42:14.265689')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:07.573815') AND strftime('%H %M %S %f', '2022-03-08 17:41:15.641985')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:20.549106') AND strftime('%H %M %S %f', '2022-03-08 17:41:28.685836')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:36.334354') AND strftime('%H %M %S %f', '2022-03-08 17:41:44.579053')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:41:52.565542') AND strftime('%H %M %S %f', '2022-03-08 17:42:00.483157')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:42:06.098617') AND strftime('%H %M %S %f', '2022-03-08 17:42:14.265689');
