--For PythonAddNoPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:01:42.009441') AND strftime('%H %M %S %f', '2021-11-01 17:01:45.675003')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:01:52.232557') AND strftime('%H %M %S %f', '2021-11-01 17:01:53.744337')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:01:57.028830') AND strftime('%H %M %S %f', '2021-11-01 17:02:01.607935')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:07.780402') AND strftime('%H %M %S %f', '2021-11-01 17:02:10.098369')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:19.215814') AND strftime('%H %M %S %f', '2021-11-01 17:02:20.743239')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:29.520947') AND strftime('%H %M %S %f', '2021-11-01 17:02:31.130234')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:42.848379') AND strftime('%H %M %S %f', '2021-11-01 17:02:45.658441')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:54.108006') AND strftime('%H %M %S %f', '2021-11-01 17:02:55.648092')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:03:00.173718') AND strftime('%H %M %S %f', '2021-11-01 17:03:03.851935')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:01:42.009441') AND strftime('%H %M %S %f', '2021-11-01 17:01:45.675003')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:01:52.232557') AND strftime('%H %M %S %f', '2021-11-01 17:01:53.744337')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:01:57.028830') AND strftime('%H %M %S %f', '2021-11-01 17:02:01.607935')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:07.780402') AND strftime('%H %M %S %f', '2021-11-01 17:02:10.098369')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:19.215814') AND strftime('%H %M %S %f', '2021-11-01 17:02:20.743239')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:29.520947') AND strftime('%H %M %S %f', '2021-11-01 17:02:31.130234')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:42.848379') AND strftime('%H %M %S %f', '2021-11-01 17:02:45.658441')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:02:54.108006') AND strftime('%H %M %S %f', '2021-11-01 17:02:55.648092')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:03:00.173718') AND strftime('%H %M %S %f', '2021-11-01 17:03:03.851935')