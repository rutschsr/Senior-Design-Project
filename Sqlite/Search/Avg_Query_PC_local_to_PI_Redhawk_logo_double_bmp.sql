-- For PC local to PI Redhawk Logo double bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:14:42.393953') AND strftime('%H %M %S %f', '2022-03-15 18:15:08.427814')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:15:10.962249') AND strftime('%H %M %S %f', '2022-03-15 18:15:38.793454')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:15:49.892828') AND strftime('%H %M %S %f', '2022-03-15 18:16:18.321899')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:16:24.445975') AND strftime('%H %M %S %f', '2022-03-15 18:16:51.895361')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:14:42.393953') AND strftime('%H %M %S %f', '2022-03-15 18:15:08.427814')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:15:10.962249') AND strftime('%H %M %S %f', '2022-03-15 18:15:38.793454')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:15:49.892828') AND strftime('%H %M %S %f', '2022-03-15 18:16:18.321899')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:16:24.445975') AND strftime('%H %M %S %f', '2022-03-15 18:16:51.895361');