-- For Peter Jamieson 2015 half png local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:16:23.493852') AND strftime('%H %M %S %f', '2022-03-08 19:16:33.155237')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:16:40.175984') AND strftime('%H %M %S %f', '2022-03-08 19:16:49.932192')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:16:53.884764') AND strftime('%H %M %S %f', '2022-03-08 19:17:03.153479')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:17:17.779537') AND strftime('%H %M %S %f', '2022-03-08 19:17:27.003212')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:17:28.666525') AND strftime('%H %M %S %f', '2022-03-08 19:17:38.643807')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:16:23.493852') AND strftime('%H %M %S %f', '2022-03-08 19:16:33.155237')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:16:40.175984') AND strftime('%H %M %S %f', '2022-03-08 19:16:49.932192')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:16:53.884764') AND strftime('%H %M %S %f', '2022-03-08 19:17:03.153479')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:17:17.779537') AND strftime('%H %M %S %f', '2022-03-08 19:17:27.003212')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:17:28.666525') AND strftime('%H %M %S %f', '2022-03-08 19:17:38.643807');
