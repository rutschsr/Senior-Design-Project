--For PythonFileWriteTest1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-10-25 17:11:11.616613') AND strftime('%H %M %S %f', '2021-10-25 17:11:33.577830')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:26:37.699063') AND strftime('%H %M %S %f', '2021-11-01 16:26:57.178555')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:37:51.581642') AND strftime('%H %M %S %f', '2021-11-01 16:37:56.512016')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:37:59.989045') AND strftime('%H %M %S %f', '2021-11-01 16:38:00.792265')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:38:04.674651') AND strftime('%H %M %S %f', '2021-11-01 16:38:06.665439')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:38:09.340105') AND strftime('%H %M %S %f', '2021-11-01 16:38:26.894767')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:40:29.068189') AND strftime('%H %M %S %f', '2021-11-01 16:40:48.998112')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:41:56.837036') AND strftime('%H %M %S %f', '2021-11-01 16:42:33.015373')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:43:10.193000') AND strftime('%H %M %S %f', '2021-11-01 16:43:26.002338')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:44:56.646758') AND strftime('%H %M %S %f', '2021-11-01 16:45:16.072783')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-10-25 17:11:11.616613') AND strftime('%H %M %S %f', '2021-10-25 17:11:33.577830')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:26:37.699063') AND strftime('%H %M %S %f', '2021-11-01 16:26:57.178555')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:37:51.581642') AND strftime('%H %M %S %f', '2021-11-01 16:37:56.512016')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:37:59.989045') AND strftime('%H %M %S %f', '2021-11-01 16:38:00.792265')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:38:04.674651') AND strftime('%H %M %S %f', '2021-11-01 16:38:06.665439')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:38:09.340105') AND strftime('%H %M %S %f', '2021-11-01 16:38:26.894767')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:40:29.068189') AND strftime('%H %M %S %f', '2021-11-01 16:40:48.998112')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:41:56.837036') AND strftime('%H %M %S %f', '2021-11-01 16:42:33.015373')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:43:10.193000') AND strftime('%H %M %S %f', '2021-11-01 16:43:26.002338')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:44:56.646758') AND strftime('%H %M %S %f', '2021-11-01 16:45:16.072783');

