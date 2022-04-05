-- For 22mb remote to pi

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 16:48:35.620274') AND strftime('%H %M %S %f', '2022-03-29 16:49:17.500453')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 16:49:30.328310') AND strftime('%H %M %S %f', '2022-03-29 16:50:10.561065')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 16:50:16.491926') AND strftime('%H %M %S %f', '2022-03-29 16:50:58.539922')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 16:51:06.297197') AND strftime('%H %M %S %f', '2022-03-29 16:51:46.759683')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-29 16:51:56.777842') AND strftime('%H %M %S %f', '2022-03-29 16:52:38.251533')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 16:48:35.620274') AND strftime('%H %M %S %f', '2022-03-29 16:49:17.500453')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 16:49:30.328310') AND strftime('%H %M %S %f', '2022-03-29 16:50:10.561065')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 16:50:16.491926') AND strftime('%H %M %S %f', '2022-03-29 16:50:58.539922')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 16:51:06.297197') AND strftime('%H %M %S %f', '2022-03-29 16:51:46.759683')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-29 16:51:56.777842') AND strftime('%H %M %S %f', '2022-03-29 16:52:38.251533');