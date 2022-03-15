-- For Peter Jamieson 2015 half bmp remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:20:28.143638') AND strftime('%H %M %S %f', '2022-03-08 18:20:38.174448')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:20:40.603581') AND strftime('%H %M %S %f', '2022-03-08 18:20:50.810136')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:20:59.955980') AND strftime('%H %M %S %f', '2022-03-08 18:21:10.506710')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:21:24.735116') AND strftime('%H %M %S %f', '2022-03-08 18:21:35.200581')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:20:28.143638') AND strftime('%H %M %S %f', '2022-03-08 18:20:38.174448')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:20:40.603581') AND strftime('%H %M %S %f', '2022-03-08 18:20:50.810136')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:20:59.955980') AND strftime('%H %M %S %f', '2022-03-08 18:21:10.506710')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:21:24.735116') AND strftime('%H %M %S %f', '2022-03-08 18:21:35.200581');
