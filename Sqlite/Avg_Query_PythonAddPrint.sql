--For PythonAddPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:33.993944') AND strftime('%H %M %S %f', '2021-11-01 17:05:34.073164')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:42.867123') AND strftime('%H %M %S %f', '2021-11-01 17:05:45.631623')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:53.851945') AND strftime('%H %M %S %f', '2021-11-01 17:05:57.530726')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:57.899085') AND strftime('%H %M %S %f', '2021-11-01 17:06:32.327903')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:06:34.540021') AND strftime('%H %M %S %f', '2021-11-01 17:07:51.250277')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:08:28.513860') AND strftime('%H %M %S %f', '2021-11-01 17:09:27.943762')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:09:37.240930') AND strftime('%H %M %S %f', '2021-11-01 17:10:36.409262')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:10:38.370973') AND strftime('%H %M %S %f', '2021-11-01 17:05:34.073164')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:10:42.868286') AND strftime('%H %M %S %f', '2021-11-01 17:10:45.719011')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:33.993944') AND strftime('%H %M %S %f', '2021-11-01 17:05:34.073164')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:42.867123') AND strftime('%H %M %S %f', '2021-11-01 17:05:45.631623')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:05:53.851945') AND strftime('%H %M %S %f', '2021-11-01 17:06:32.327903')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:06:34.540021') AND strftime('%H %M %S %f', '2021-11-01 17:07:51.250277')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:08:28.513860') AND strftime('%H %M %S %f', '2021-11-01 17:09:27.943762')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:09:37.240930') AND strftime('%H %M %S %f', '2021-11-01 17:10:36.409262')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:10:38.370973') AND strftime('%H %M %S %f', '2021-11-01 17:05:34.073164')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:10:42.868286') AND strftime('%H %M %S %f', '2021-11-01 17:10:45.719011');