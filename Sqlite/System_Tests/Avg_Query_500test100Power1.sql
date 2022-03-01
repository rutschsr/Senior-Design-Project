--For 500test100Power1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-09-30 11:10:39.362176') AND strftime('%H %M %S %f', '2021-09-30 11:10:48.798664')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-09-30 11:10:39.362176') AND strftime('%H %M %S %f', '2021-09-30 11:10:48.798664');
