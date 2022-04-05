-- For PC local to PI Redhawk logo double png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:41:50.426304') AND strftime('%H %M %S %f', '2022-03-15 18:42:02.775055')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:42:12.645779') AND strftime('%H %M %S %f', '2022-03-15 18:42:24.859898')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:42:32.452774') AND strftime('%H %M %S %f', '2022-03-15 18:42:44.744990')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:42:48.168209') AND strftime('%H %M %S %f', '2022-03-15 18:43:00.477065')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:41:50.426304') AND strftime('%H %M %S %f', '2022-03-15 18:42:02.775055')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:42:12.645779') AND strftime('%H %M %S %f', '2022-03-15 18:42:24.859898')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:42:32.452774') AND strftime('%H %M %S %f', '2022-03-15 18:42:44.744990')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:42:48.168209') AND strftime('%H %M %S %f', '2022-03-15 18:43:00.477065');