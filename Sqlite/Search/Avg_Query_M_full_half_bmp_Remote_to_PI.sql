-- For M Full half bmp Remote to PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:10:46.786909') AND strftime('%H %M %S %f', '2022-03-01 17:10:59.283258')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:11:11.005351') AND strftime('%H %M %S %f', '2022-03-01 17:11:24.156535')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:11:34.514926') AND strftime('%H %M %S %f', '2022-03-01 17:11:47.011327')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:11:58.324040') AND strftime('%H %M %S %f', '2022-03-01 17:12:10.808168')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:12:18.523946') AND strftime('%H %M %S %f', '2022-03-01 17:12:31.020514')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-01 17:12:44.336275') AND strftime('%H %M %S %f', '2022-03-01 17:12:56.820776')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:10:46.786909') AND strftime('%H %M %S %f', '2022-03-01 17:10:59.283258')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:11:11.005351') AND strftime('%H %M %S %f', '2022-03-01 17:11:24.156535')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:11:34.514926') AND strftime('%H %M %S %f', '2022-03-01 17:11:47.011327')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:11:58.324040') AND strftime('%H %M %S %f', '2022-03-01 17:12:10.808168')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:12:18.523946') AND strftime('%H %M %S %f', '2022-03-01 17:12:31.020514')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-01 17:12:44.336275') AND strftime('%H %M %S %f', '2022-03-01 17:12:56.820776');
