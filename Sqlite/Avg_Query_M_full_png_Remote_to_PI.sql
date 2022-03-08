-- For M Full PNG Remote to PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:28:35.635983') AND strftime('%H %M %S %f', '2022-03-01 17:28:48.078603')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:28:53.120406') AND strftime('%H %M %S %f', '2022-03-01 17:29:05.808942')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:29:11.806265') AND strftime('%H %M %S %f', '2022-03-01 17:29:24.220018')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:29:30.421221') AND strftime('%H %M %S %f', '2022-03-01 17:29:42.851313')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:29:53.210473') AND strftime('%H %M %S %f', '2022-03-01 17:30:05.776124')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:30:14.770024') AND strftime('%H %M %S %f', '2022-03-01 17:30:27.201219')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:28:35.635983') AND strftime('%H %M %S %f', '2022-03-01 17:28:48.078603')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:28:53.120406') AND strftime('%H %M %S %f', '2022-03-01 17:29:05.808942')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:29:11.806265') AND strftime('%H %M %S %f', '2022-03-01 17:29:24.220018')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:29:30.421221') AND strftime('%H %M %S %f', '2022-03-01 17:29:42.851313')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:29:53.210473') AND strftime('%H %M %S %f', '2022-03-01 17:30:05.776124')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:30:14.770024') AND strftime('%H %M %S %f', '2022-03-01 17:30:27.201219');
