-- For Redhawk logo half png remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:01.480791') AND strftime('%H %M %S %f', '2022-03-08 19:31:10.528780')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:14.140938') AND strftime('%H %M %S %f', '2022-03-08 19:31:22.496857')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:24.528678') AND strftime('%H %M %S %f', '2022-03-08 19:31:33.411675')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:35.238667') AND strftime('%H %M %S %f', '2022-03-08 19:31:43.893603')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:47.259862') AND strftime('%H %M %S %f', '2022-03-08 19:31:56.025463')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:01.480791') AND strftime('%H %M %S %f', '2022-03-08 19:31:10.528780')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:14.140938') AND strftime('%H %M %S %f', '2022-03-08 19:31:22.496857')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:24.528678') AND strftime('%H %M %S %f', '2022-03-08 19:31:33.411675')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:35.238667') AND strftime('%H %M %S %f', '2022-03-08 19:31:43.893603')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:31:47.259862') AND strftime('%H %M %S %f', '2022-03-08 19:31:56.025463');