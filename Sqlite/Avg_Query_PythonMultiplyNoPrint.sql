--For PythonMultiplyNoPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:22.645387') AND strftime('%H %M %S %f', '2021-11-01 17:26:23.465089')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:23.693910') AND strftime('%H %M %S %f', '2021-11-01 17:26:24.501147')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:24.841072') AND strftime('%H %M %S %f', '2021-11-01 17:26:25.877141')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:26.954594') AND strftime('%H %M %S %f', '2021-11-01 17:26:27.880304')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:29.366595') AND strftime('%H %M %S %f', '2021-11-01 17:26:30.222761')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:32.389687') AND strftime('%H %M %S %f', '2021-11-01 17:26:34.515379')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:33.700229') AND strftime('%H %M %S %f', '2021-11-01 16:13:12.473326')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:34.842738') AND strftime('%H %M %S %f', '2021-11-01 17:26:35.731998')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:35.936350') AND strftime('%H %M %S %f', '2021-11-01 17:26:36.780033')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:37.501354') AND strftime('%H %M %S %f', '2021-11-01 17:26:38.455370')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:38.701386') AND strftime('%H %M %S %f', '2021-11-01 17:26:39.491916')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:40.065159') AND strftime('%H %M %S %f', '2021-11-01 17:26:40.937440')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:26:41.101354')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:22.645387') AND strftime('%H %M %S %f', '2021-11-01 17:26:23.465089')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:23.693910') AND strftime('%H %M %S %f', '2021-11-01 17:26:24.501147')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:24.841072') AND strftime('%H %M %S %f', '2021-11-01 17:26:25.877141')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:26.954594') AND strftime('%H %M %S %f', '2021-11-01 17:26:27.880304')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:29.366595') AND strftime('%H %M %S %f', '2021-11-01 17:26:30.222761')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:32.389687') AND strftime('%H %M %S %f', '2021-11-01 17:26:33.237296')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:33.700229') AND strftime('%H %M %S %f', '2021-11-01 17:26:34.515379')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:34.842738') AND strftime('%H %M %S %f', '2021-11-01 17:26:35.731998')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:35.936350') AND strftime('%H %M %S %f', '2021-11-01 17:26:36.780033')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:37.501354') AND strftime('%H %M %S %f', '2021-11-01 17:26:38.455370')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:38.701386') AND strftime('%H %M %S %f', '2021-11-01 17:26:39.491916')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:26:40.065159') AND strftime('%H %M %S %f', '2021-11-01 17:26:40.937440')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:26:41.101354');

