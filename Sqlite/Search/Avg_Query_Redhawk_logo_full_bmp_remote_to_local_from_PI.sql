-- For Redhawk logo full remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:03.683012') AND strftime('%H %M %S %f', '2022-03-08 18:33:15.364394')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:17.043515') AND strftime('%H %M %S %f', '2022-03-08 18:33:28.954689')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:31.882838') AND strftime('%H %M %S %f', '2022-03-08 18:33:43.318033')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:45.103579') AND strftime('%H %M %S %f', '2022-03-08 18:33:56.596880')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:59.172929') AND strftime('%H %M %S %f', '2022-03-08 18:34:11.522165')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:03.683012') AND strftime('%H %M %S %f', '2022-03-08 18:33:15.364394')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:17.043515') AND strftime('%H %M %S %f', '2022-03-08 18:33:28.954689')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:31.882838') AND strftime('%H %M %S %f', '2022-03-08 18:33:43.318033')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:45.103579') AND strftime('%H %M %S %f', '2022-03-08 18:33:56.596880')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:33:59.172929') AND strftime('%H %M %S %f', '2022-03-08 18:34:11.522165');
