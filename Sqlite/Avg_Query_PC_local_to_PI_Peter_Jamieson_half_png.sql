-- For PC local to PI Peter Jamieson half png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:09:50.904202') AND strftime('%H %M %S %f', '2022-03-15 18:10:04.002660')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:10:09.072844') AND strftime('%H %M %S %f', '2022-03-15 18:10:22.036862')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:10:25.485240') AND strftime('%H %M %S %f', '2022-03-15 18:10:38.600403')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:10:48.658967') AND strftime('%H %M %S %f', '2022-03-15 18:11:01.745944')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:11:18.706179') AND strftime('%H %M %S %f', '2022-03-15 18:11:31.599894')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:09:50.904202') AND strftime('%H %M %S %f', '2022-03-15 18:10:04.002660')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:10:09.072844') AND strftime('%H %M %S %f', '2022-03-15 18:10:22.036862')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:10:25.485240') AND strftime('%H %M %S %f', '2022-03-15 18:10:38.600403')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:10:48.658967') AND strftime('%H %M %S %f', '2022-03-15 18:11:01.745944')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:11:18.706179') AND strftime('%H %M %S %f', '2022-03-15 18:11:31.599894');