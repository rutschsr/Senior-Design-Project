-- For PC local to PI Peter Jamieson double bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:24:45.370065') AND strftime('%H %M %S %f', '2022-03-15 17:25:30.768425')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:25:41.298329') AND strftime('%H %M %S %f', '2022-03-15 17:26:28.596775')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:26:32.913814') AND strftime('%H %M %S %f', '2022-03-15 17:27:19.351443')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:27:25.208667') AND strftime('%H %M %S %f', '2022-03-15 17:28:09.206471')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:28:12.315223') AND strftime('%H %M %S %f', '2022-03-15 17:28:57.343768')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:24:45.370065') AND strftime('%H %M %S %f', '2022-03-15 17:25:30.768425')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:25:41.298329') AND strftime('%H %M %S %f', '2022-03-15 17:26:28.596775')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:26:32.913814') AND strftime('%H %M %S %f', '2022-03-15 17:27:19.351443')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:27:25.208667') AND strftime('%H %M %S %f', '2022-03-15 17:28:09.206471')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:28:12.315223') AND strftime('%H %M %S %f', '2022-03-15 17:28:57.343768');