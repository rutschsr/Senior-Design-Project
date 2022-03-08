-- For C Divide Print

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:19:41.199157') AND strftime('%H %M %S %f', '2022-02-08 18:19:55.350402')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:20:23.631852') AND strftime('%H %M %S %f', '2022-02-08 18:20:37.209412')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:20:51.331565') AND strftime('%H %M %S %f', '2022-02-08 18:21:27.067940')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:21:34.427663') AND strftime('%H %M %S %f', '2022-02-08 18:21:48.479691')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:21:56.372902') AND strftime('%H %M %S %f', '2022-02-08 18:22:10.941513')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:19:41.199157') AND strftime('%H %M %S %f', '2022-02-08 18:19:55.350402')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:20:23.631852') AND strftime('%H %M %S %f', '2022-02-08 18:20:37.209412')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:20:51.331565') AND strftime('%H %M %S %f', '2022-02-08 18:21:27.067940')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:21:34.427663') AND strftime('%H %M %S %f', '2022-02-08 18:21:48.479691')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:21:56.372902') AND strftime('%H %M %S %f', '2022-02-08 18:22:10.941513');
