-- For M full half png local to remote from PI
-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:57:23.588816') AND strftime('%H %M %S %f', '2022-03-08 18:57:32.009905')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:57:37.010881') AND strftime('%H %M %S %f', '2022-03-08 18:57:45.218618')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:57:51.500942') AND strftime('%H %M %S %f', '2022-03-08 18:58:00.524013')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:58:08.810129') AND strftime('%H %M %S %f', '2022-03-08 18:58:17.190546')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:58:20.872609') AND strftime('%H %M %S %f', '2022-03-08 18:58:29.596974')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:57:23.588816') AND strftime('%H %M %S %f', '2022-03-08 18:57:32.009905')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:57:37.010881') AND strftime('%H %M %S %f', '2022-03-08 18:57:45.218618')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:57:51.500942') AND strftime('%H %M %S %f', '2022-03-08 18:58:00.524013')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:58:08.810129') AND strftime('%H %M %S %f', '2022-03-08 18:58:17.190546')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:58:20.872609') AND strftime('%H %M %S %f', '2022-03-08 18:58:29.596974');
