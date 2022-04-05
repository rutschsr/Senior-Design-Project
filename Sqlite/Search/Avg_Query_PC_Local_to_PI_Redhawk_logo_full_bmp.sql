-- For PC local to PI Redhawk logo full bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:37:15.967105') AND strftime('%H %M %S %f', '2022-03-15 18:37:31.830005')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:37:36.249393') AND strftime('%H %M %S %f', '2022-03-15 18:37:52.316339')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:37:58.644228') AND strftime('%H %M %S %f', '2022-03-15 18:38:14.331895')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:38:17.235808') AND strftime('%H %M %S %f', '2022-03-15 18:38:33.033118')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:38:36.903831') AND strftime('%H %M %S %f', '2022-03-15 18:38:52.917482')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:37:15.967105') AND strftime('%H %M %S %f', '2022-03-15 18:37:31.830005')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:37:36.249393') AND strftime('%H %M %S %f', '2022-03-15 18:37:52.316339')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:37:58.644228') AND strftime('%H %M %S %f', '2022-03-15 18:38:14.331895')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:38:17.235808') AND strftime('%H %M %S %f', '2022-03-15 18:38:33.033118')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:38:36.903831') AND strftime('%H %M %S %f', '2022-03-15 18:38:52.917482');