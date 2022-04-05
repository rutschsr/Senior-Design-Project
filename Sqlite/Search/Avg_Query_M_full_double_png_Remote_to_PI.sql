-- For M Full double pmg Remote to PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:25:20.643274') AND strftime('%H %M %S %f', '2022-03-01 17:25:33.180120')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:25:40.347162') AND strftime('%H %M %S %f', '2022-03-01 17:25:52.937733')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:26:01.104732') AND strftime('%H %M %S %f', '2022-03-01 17:26:13.654504')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:26:20.756468') AND strftime('%H %M %S %f', '2022-03-01 17:26:33.322928')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:26:38.664210') AND strftime('%H %M %S %f', '2022-03-01 17:26:51.200688')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:25:20.643274') AND strftime('%H %M %S %f', '2022-03-01 17:25:33.180120')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:25:40.347162') AND strftime('%H %M %S %f', '2022-03-01 17:25:52.937733')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:26:01.104732') AND strftime('%H %M %S %f', '2022-03-01 17:26:13.654504')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:26:20.756468') AND strftime('%H %M %S %f', '2022-03-01 17:26:33.322928')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:26:38.664210') AND strftime('%H %M %S %f', '2022-03-01 17:26:51.200688');
