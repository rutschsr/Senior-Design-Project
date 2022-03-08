-- For M Full double bmp Remote to PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:04:42.051716') AND strftime('%H %M %S %f', '2022-03-01 17:04:55.297926')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:05:00.179268') AND strftime('%H %M %S %f', '2022-03-01 17:05:13.494662')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:05:20.854577') AND strftime('%H %M %S %f', '2022-03-01 17:05:34.129509')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:05:44.582555') AND strftime('%H %M %S %f', '2022-03-01 17:05:57.734065')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:06:07.559643') AND strftime('%H %M %S %f', '2022-03-01 17:06:20.833845')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:06:33.346360') AND strftime('%H %M %S %f', '2022-03-01 17:06:46.568048')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:04:42.051716') AND strftime('%H %M %S %f', '2022-03-01 17:04:55.297926')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:05:00.179268') AND strftime('%H %M %S %f', '2022-03-01 17:05:13.494662')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:05:20.854577') AND strftime('%H %M %S %f', '2022-03-01 17:05:34.129509')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:05:44.582555') AND strftime('%H %M %S %f', '2022-03-01 17:05:57.734065')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:06:07.559643') AND strftime('%H %M %S %f', '2022-03-01 17:06:20.833845')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:06:33.346360') AND strftime('%H %M %S %f', '2022-03-01 17:06:46.568048');
