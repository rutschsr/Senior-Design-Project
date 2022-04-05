-- For Redhawk Logo double png local to remote from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:22:20.336244') AND strftime('%H %M %S %f', '2022-03-08 19:22:31.104222')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:22:34.282358') AND strftime('%H %M %S %f', '2022-03-08 19:22:44.968678')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:22:48.592731') AND strftime('%H %M %S %f', '2022-03-08 19:22:59.319967')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:23:02.957274') AND strftime('%H %M %S %f', '2022-03-08 19:23:13.356087')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 19:23:22.449067') AND strftime('%H %M %S %f', '2022-03-08 19:23:33.323350')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:22:20.336244') AND strftime('%H %M %S %f', '2022-03-08 19:22:31.104222')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:22:34.282358') AND strftime('%H %M %S %f', '2022-03-08 19:22:44.968678')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:22:48.592731') AND strftime('%H %M %S %f', '2022-03-08 19:22:59.319967')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:23:02.957274') AND strftime('%H %M %S %f', '2022-03-08 19:23:13.356087')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 19:23:22.449067') AND strftime('%H %M %S %f', '2022-03-08 19:23:33.323350');
