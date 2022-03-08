-- For C Add Print1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:41:07.644929') AND strftime('%H %M %S %f', '2022-02-08 17:41:21.070714')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:41:44.629892') AND strftime('%H %M %S %f', '2022-02-08 17:41:59.186290')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:42:16.990572') AND strftime('%H %M %S %f', '2022-02-08 17:42:28.590111')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:42:44.825604') AND strftime('%H %M %S %f', '2022-02-08 17:42:57.133907')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:43:11.898612') AND strftime('%H %M %S %f', '2022-02-08 17:43:22.882275')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:41:07.644929') AND strftime('%H %M %S %f', '2022-02-08 17:41:21.070714')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:41:44.629892') AND strftime('%H %M %S %f', '2022-02-08 17:41:59.186290')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:42:16.990572') AND strftime('%H %M %S %f', '2022-02-08 17:42:28.590111')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:42:44.825604') AND strftime('%H %M %S %f', '2022-02-08 17:42:57.133907')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:43:11.898612') AND strftime('%H %M %S %f', '2022-02-08 17:43:22.882275');
