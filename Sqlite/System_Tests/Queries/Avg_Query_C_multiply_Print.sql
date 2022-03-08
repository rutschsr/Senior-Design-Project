-- For C Multiply Print

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:06:51.664860') AND strftime('%H %M %S %f', '2022-02-08 18:07:15.203496')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:07:35.461260') AND strftime('%H %M %S %f', '2022-02-08 18:07:49.214917')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:08:01.129304') AND strftime('%H %M %S %f', '2022-02-08 18:08:14.785178')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:08:29.304550') AND strftime('%H %M %S %f', '2022-02-08 18:08:43.152400')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 18:08:53.990330') AND strftime('%H %M %S %f', '2022-02-08 18:09:27.968805')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:06:51.664860') AND strftime('%H %M %S %f', '2022-02-08 18:07:15.203496')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:07:35.461260') AND strftime('%H %M %S %f', '2022-02-08 18:07:49.214917')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:08:01.129304') AND strftime('%H %M %S %f', '2022-02-08 18:08:14.785178')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:08:29.304550') AND strftime('%H %M %S %f', '2022-02-08 18:08:43.152400')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 18:08:53.990330') AND strftime('%H %M %S %f', '2022-02-08 18:09:27.968805');
