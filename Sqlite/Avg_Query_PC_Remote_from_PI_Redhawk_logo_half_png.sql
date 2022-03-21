-- For PC remote from PI Redhawk Logo half png

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:21:58.651392') AND strftime('%H %M %S %f', '2022-03-15 19:22:09.951734')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:22:14.109138') AND strftime('%H %M %S %f', '2022-03-15 19:22:26.216296')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:22:31.966381') AND strftime('%H %M %S %f', '2022-03-15 19:22:44.073555')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:22:49.074705') AND strftime('%H %M %S %f', '2022-03-15 19:23:01.382938')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 19:23:06.482157') AND strftime('%H %M %S %f', '2022-03-15 19:23:18.748894')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:21:58.651392') AND strftime('%H %M %S %f', '2022-03-15 19:22:09.951734')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:22:14.109138') AND strftime('%H %M %S %f', '2022-03-15 19:22:26.216296')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:22:31.966381') AND strftime('%H %M %S %f', '2022-03-15 19:22:44.073555')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:22:49.074705') AND strftime('%H %M %S %f', '2022-03-15 19:23:01.382938')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 19:23:06.482157') AND strftime('%H %M %S %f', '2022-03-15 19:23:18.748894');