-- For M Full bmp Remote to PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 16:57:59.602536') AND strftime('%H %M %S %f', '2022-03-01 16:58:11.988242')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 16:58:28.534957') AND strftime('%H %M %S %f', '2022-03-01 16:58:40.924940')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 16:58:57.185086') AND strftime('%H %M %S %f', '2022-03-01 16:59:09.598939')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 16:59:17.082159') AND strftime('%H %M %S %f', '2022-03-01 16:59:29.443106')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 16:59:37.934493') AND strftime('%H %M %S %f', '2022-03-01 16:59:50.295286')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 16:59:59.662244') AND strftime('%H %M %S %f', '2022-03-01 17:00:12.064598')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:00:12.064598') AND strftime('%H %M %S %f', '2022-03-01 17:00:30.691811')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 16:57:59.602536') AND strftime('%H %M %S %f', '2022-03-01 16:58:11.988242')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 16:58:28.534957') AND strftime('%H %M %S %f', '2022-03-01 16:58:40.924940')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 16:58:57.185086') AND strftime('%H %M %S %f', '2022-03-01 16:59:09.598939')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 16:59:17.082159') AND strftime('%H %M %S %f', '2022-03-01 16:59:29.443106')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 16:59:37.934493') AND strftime('%H %M %S %f', '2022-03-01 16:59:50.295286')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 16:59:59.662244') AND strftime('%H %M %S %f', '2022-03-01 17:00:12.064598')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:00:12.064598') AND strftime('%H %M %S %f', '2022-03-01 17:00:30.691811');
