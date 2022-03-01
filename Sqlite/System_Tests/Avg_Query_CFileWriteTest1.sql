--For CFileWriteTest1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-10-25 17:34:57.002072') AND strftime('%H %M %S %f', '2021-10-25 17:35:34.191993')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:46:56.489738') AND strftime('%H %M %S %f', '2021-11-01 16:47:24.595372')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:48:41.931743') AND strftime('%H %M %S %f', '2021-11-01 16:49:13.960914')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:50:09.671978') AND strftime('%H %M %S %f', '2021-11-01 16:50:45.707265')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:52:47.520396') AND strftime('%H %M %S %f', '2021-11-01 16:53:16.239939')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:54:13.056602') AND strftime('%H %M %S %f', '2021-11-01 16:54:41.379596')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:55:36.479782') AND strftime('%H %M %S %f', '2021-11-01 16:56:07.964719')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-10-25 17:34:57.002072') AND strftime('%H %M %S %f', '2021-10-25 17:35:34.191993')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:46:56.489738') AND strftime('%H %M %S %f', '2021-11-01 16:47:24.595372')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:48:41.931743') AND strftime('%H %M %S %f', '2021-11-01 16:49:13.960914')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:50:09.671978') AND strftime('%H %M %S %f', '2021-11-01 16:50:45.707265')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:52:47.520396') AND strftime('%H %M %S %f', '2021-11-01 16:53:16.239939')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:54:13.056602') AND strftime('%H %M %S %f', '2021-11-01 16:54:41.379596')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:55:36.479782') AND strftime('%H %M %S %f', '2021-11-01 16:56:07.964719');