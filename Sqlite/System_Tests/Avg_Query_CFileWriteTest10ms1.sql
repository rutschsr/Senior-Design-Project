--For CFileWriteTest10ms1

-- I'm not entirely certain about this one, the graph is a little confusing

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-10-28 16:46:58.952516') AND strftime('%H %M %S %f', '2021-10-28 16:47:01.790728')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-10-28 16:47:03.191412') AND strftime('%H %M %S %f', '2021-10-28 16:47:42.314661')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-10-28 16:46:58.952516') AND strftime('%H %M %S %f', '2021-10-28 16:47:01.790728')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-10-28 16:47:03.191412') AND strftime('%H %M %S %f', '2021-10-28 16:47:42.314661');