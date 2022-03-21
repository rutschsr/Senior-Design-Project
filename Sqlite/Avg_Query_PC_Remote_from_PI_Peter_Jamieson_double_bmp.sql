-- For PC remote from PI Peter Jamieson double bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:45:46.086040') AND strftime('%H %M %S %f', '2022-03-15 18:46:40.073248')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:46:43.550584') AND strftime('%H %M %S %f', '2022-03-15 18:47:35.821223')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:47:38.504259') AND strftime('%H %M %S %f', '2022-03-15 18:48:29.832949')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:48:37.127588') AND strftime('%H %M %S %f', '2022-03-15 18:49:30.418061')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:49:35.287459') AND strftime('%H %M %S %f', '2022-03-15 18:50:27.624131')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:45:46.086040') AND strftime('%H %M %S %f', '2022-03-15 18:46:40.073248')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:46:43.550584') AND strftime('%H %M %S %f', '2022-03-15 18:47:35.821223')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:47:38.504259') AND strftime('%H %M %S %f', '2022-03-15 18:48:29.832949')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:48:37.127588') AND strftime('%H %M %S %f', '2022-03-15 18:49:30.418061')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:49:35.287459') AND strftime('%H %M %S %f', '2022-03-15 18:50:27.624131');