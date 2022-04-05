-- For Peter Jamieson 2015 half png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:23:44.275484') AND strftime('%H %M %S %f', '2022-03-08 18:23:53.531502')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:23:57.062265') AND strftime('%H %M %S %f', '2022-03-08 18:24:06.412444')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:24:08.222931') AND strftime('%H %M %S %f', '2022-03-08 18:24:18.012606')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:24:25.929501') AND strftime('%H %M %S %f', '2022-03-08 18:24:35.264341')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:24:37.610500') AND strftime('%H %M %S %f', '2022-03-08 18:24:47.084098')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:23:44.275484') AND strftime('%H %M %S %f', '2022-03-08 18:23:53.531502')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:23:57.062265') AND strftime('%H %M %S %f', '2022-03-08 18:24:06.412444')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:24:08.222931') AND strftime('%H %M %S %f', '2022-03-08 18:24:18.012606')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:24:25.929501') AND strftime('%H %M %S %f', '2022-03-08 18:24:35.264341')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:24:37.610500') AND strftime('%H %M %S %f', '2022-03-08 18:24:47.084098');
