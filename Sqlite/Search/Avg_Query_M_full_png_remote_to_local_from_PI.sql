-- For M Full png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:01.200725') AND strftime('%H %M %S %f', '2022-03-08 17:12:09.093088')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:12.284011') AND strftime('%H %M %S %f', '2022-03-08 17:12:20.282779')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:22.789779') AND strftime('%H %M %S %f', '2022-03-08 17:12:31.197689')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:33.557119') AND strftime('%H %M %S %f', '2022-03-08 17:12:40.958726')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:43.288696') AND strftime('%H %M %S %f', '2022-03-08 17:12:51.013566')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:01.200725') AND strftime('%H %M %S %f', '2022-03-08 17:12:09.093088')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:12.284011') AND strftime('%H %M %S %f', '2022-03-08 17:12:20.282779')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:22.789779') AND strftime('%H %M %S %f', '2022-03-08 17:12:31.197689')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:33.557119') AND strftime('%H %M %S %f', '2022-03-08 17:12:40.958726')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 17:12:43.288696') AND strftime('%H %M %S %f', '2022-03-08 17:12:51.013566');
