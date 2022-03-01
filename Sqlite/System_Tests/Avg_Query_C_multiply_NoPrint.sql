-- For C Multiply NoPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:13:20.270124') AND strftime('%H %M %S %f', '2022-02-08 18:13:38.643622')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:13:49.481414') AND strftime('%H %M %S %f', '2022-02-08 18:14:07.924516')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:14:20.109729') AND strftime('%H %M %S %f', '2022-02-08 18:14:38.524457')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:14:43.066432') AND strftime('%H %M %S %f', '2022-02-08 18:15:01.546664')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:15:12.302276') AND strftime('%H %M %S %f', '2022-02-08 18:15:30.663494')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:13:20.270124') AND strftime('%H %M %S %f', '2022-02-08 18:13:38.643622')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:13:49.481414') AND strftime('%H %M %S %f', '2022-02-08 18:14:07.924516')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:14:20.109729') AND strftime('%H %M %S %f', '2022-02-08 18:14:38.524457')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:14:43.066432') AND strftime('%H %M %S %f', '2022-02-08 18:15:01.546664')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:15:12.302276') AND strftime('%H %M %S %f', '2022-02-08 18:15:30.663494');
