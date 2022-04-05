-- For PC local to PI Peter Jamieson full bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:53:34.158685') AND strftime('%H %M %S %f', '2022-03-15 17:53:55.038993')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:54:00.777405') AND strftime('%H %M %S %f', '2022-03-15 17:54:20.814316')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:54:24.057806') AND strftime('%H %M %S %f', '2022-03-15 17:54:43.561482')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:54:52.502877') AND strftime('%H %M %S %f', '2022-03-15 17:55:13.588640')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 17:55:15.210092') AND strftime('%H %M %S %f', '2022-03-15 17:55:35.013708')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:53:34.158685') AND strftime('%H %M %S %f', '2022-03-15 17:53:55.038993')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:54:00.777405') AND strftime('%H %M %S %f', '2022-03-15 17:54:20.814316')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:54:24.057806') AND strftime('%H %M %S %f', '2022-03-15 17:54:43.561482')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:54:52.502877') AND strftime('%H %M %S %f', '2022-03-15 17:55:13.588640')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 17:55:15.210092') AND strftime('%H %M %S %f', '2022-03-15 17:55:35.013708');