-- For PC local to PI Peter Jamieson full png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:57:20.259091') AND strftime('%H %M %S %f', '2022-03-15 17:57:35.253387')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:57:39.644753') AND strftime('%H %M %S %f', '2022-03-15 17:57:54.937612')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:57:58.329901') AND strftime('%H %M %S %f', '2022-03-15 17:58:13.651503')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:58:30.399297') AND strftime('%H %M %S %f', '2022-03-15 17:58:45.434564')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:59:05.615693') AND strftime('%H %M %S %f', '2022-03-15 17:59:21.044390')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:59:26.401636') AND strftime('%H %M %S %f', '2022-03-15 17:59:41.625782')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:57:20.259091') AND strftime('%H %M %S %f', '2022-03-15 17:57:35.253387')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:57:39.644753') AND strftime('%H %M %S %f', '2022-03-15 17:57:54.937612')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:57:58.329901') AND strftime('%H %M %S %f', '2022-03-15 17:58:13.651503')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:58:30.399297') AND strftime('%H %M %S %f', '2022-03-15 17:58:45.434564')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:59:05.615693') AND strftime('%H %M %S %f', '2022-03-15 17:59:21.044390')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:59:26.401636') AND strftime('%H %M %S %f', '2022-03-15 17:59:41.625782');