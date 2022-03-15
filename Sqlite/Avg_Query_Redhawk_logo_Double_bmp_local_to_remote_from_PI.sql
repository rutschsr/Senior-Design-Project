-- For Redhawk logo double bmp local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:19:04.614040') AND strftime('%H %M %S %f', '2022-03-08 19:19:31.262452')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:19:37.831657') AND strftime('%H %M %S %f', '2022-03-08 19:20:04.696181')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:20:10.241736') AND strftime('%H %M %S %f', '2022-03-08 19:20:36.782472')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:20:40.710212') AND strftime('%H %M %S %f', '2022-03-08 19:21:08.200603')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:21:13.840794') AND strftime('%H %M %S %f', '2022-03-08 19:21:40.054440')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:19:04.614040') AND strftime('%H %M %S %f', '2022-03-08 19:19:31.262452')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:19:37.831657') AND strftime('%H %M %S %f', '2022-03-08 19:20:04.696181')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:20:10.241736') AND strftime('%H %M %S %f', '2022-03-08 19:20:36.782472')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:20:40.710212') AND strftime('%H %M %S %f', '2022-03-08 19:21:08.200603')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:21:13.840794') AND strftime('%H %M %S %f', '2022-03-08 19:21:40.054440');
