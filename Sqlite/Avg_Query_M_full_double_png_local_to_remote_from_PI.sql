-- For M Full  double PNG local to Remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:51:34.249422') AND strftime('%H %M %S %f', '2022-03-08 18:51:43.219893')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:51:46.926609') AND strftime('%H %M %S %f', '2022-03-08 18:51:55.076913')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:04.058869') AND strftime('%H %M %S %f', '2022-03-08 18:52:12.550163')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:14.962033') AND strftime('%H %M %S %f', '2022-03-08 18:52:23.522016')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:29.829591') AND strftime('%H %M %S %f', '2022-03-08 18:52:38.348896')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:43.174094') AND strftime('%H %M %S %f', '2022-03-08 18:52:51.529175')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:55.768181') AND strftime('%H %M %S %f', '2022-03-08 18:53:04.697414')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:51:34.249422') AND strftime('%H %M %S %f', '2022-03-08 18:51:43.219893')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:51:46.926609') AND strftime('%H %M %S %f', '2022-03-08 18:51:55.076913')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:04.058869') AND strftime('%H %M %S %f', '2022-03-08 18:52:12.550163')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:14.962033') AND strftime('%H %M %S %f', '2022-03-08 18:52:23.522016')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:29.829591') AND strftime('%H %M %S %f', '2022-03-08 18:52:38.348896')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:43.174094') AND strftime('%H %M %S %f', '2022-03-08 18:52:51.529175')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:52:55.768181') AND strftime('%H %M %S %f', '2022-03-08 18:53:04.697414');
