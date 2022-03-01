-- For C Add No Print1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:45:24.467570') AND strftime('%H %M %S %f', '2022-02-08 17:45:49.574799')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:46:05.863638') AND strftime('%H %M %S %f', '2022-02-08 17:46:31.134908')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:46:59.789247') AND strftime('%H %M %S %f', '2022-02-08 17:47:25.056258')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:47:32.035190') AND strftime('%H %M %S %f', '2022-02-08 17:47:59.198626')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:48:08.946886') AND strftime('%H %M %S %f', '2022-02-08 17:48:34.213468')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:45:24.467570') AND strftime('%H %M %S %f', '2022-02-08 17:45:49.574799')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:46:05.863638') AND strftime('%H %M %S %f', '2022-02-08 17:46:31.134908')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:46:59.789247') AND strftime('%H %M %S %f', '2022-02-08 17:47:25.056258')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:47:32.035190') AND strftime('%H %M %S %f', '2022-02-08 17:47:59.198626')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:48:08.946886') AND strftime('%H %M %S %f', '2022-02-08 17:48:34.213468');
