-- For M Full half bmp remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:19.605779') AND strftime('%H %M %S %f', '2022-03-08 17:48:27.609325')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:31.504594') AND strftime('%H %M %S %f', '2022-03-08 17:48:39.724743')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:45.274110') AND strftime('%H %M %S %f', '2022-03-08 17:48:53.478290')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:56.681198') AND strftime('%H %M %S %f', '2022-03-08 17:49:04.585971')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:49:11.905168') AND strftime('%H %M %S %f', '2022-03-08 17:49:20.203663')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:49:30.114822') AND strftime('%H %M %S %f', '2022-03-08 17:49:38.073229')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:49:43.131583') AND strftime('%H %M %S %f', '2022-03-08 17:49:51.401272')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:19.605779') AND strftime('%H %M %S %f', '2022-03-08 17:48:27.609325')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:31.504594') AND strftime('%H %M %S %f', '2022-03-08 17:48:39.724743')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:45.274110') AND strftime('%H %M %S %f', '2022-03-08 17:48:53.478290')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:48:56.681198') AND strftime('%H %M %S %f', '2022-03-08 17:49:04.585971')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:49:11.905168') AND strftime('%H %M %S %f', '2022-03-08 17:49:20.203663')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:49:30.114822') AND strftime('%H %M %S %f', '2022-03-08 17:49:38.073229')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:49:43.131583') AND strftime('%H %M %S %f', '2022-03-08 17:49:51.401272');
