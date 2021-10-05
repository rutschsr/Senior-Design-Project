--For 500test100Power

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-09-30 11:08:04.194447') AND strftime('%H %M %S %f', '2021-09-30 11:08:13.729347')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-09-30 11:08:04.194447') AND strftime('%H %M %S %f', '2021-09-30 11:08:13.729347');

