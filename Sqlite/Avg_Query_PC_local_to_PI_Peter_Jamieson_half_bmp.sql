-- For PC local to PI Peter Jamieson half bmp

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:06:33.700457') AND strftime('%H %M %S %f', '2022-03-15 18:06:47.642154')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:07:01.083727') AND strftime('%H %M %S %f', '2022-03-15 18:07:15.084096')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:07:23.128085') AND strftime('%H %M %S %f', '2022-03-15 18:07:37.004344')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:07:58.597597') AND strftime('%H %M %S %f', '2022-03-15 18:08:12.514986')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-15 18:08:20.981583') AND strftime('%H %M %S %f', '2022-03-15 18:08:35.038086')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:06:33.700457') AND strftime('%H %M %S %f', '2022-03-15 18:06:47.642154')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:07:01.083727') AND strftime('%H %M %S %f', '2022-03-15 18:07:15.084096')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:07:23.128085') AND strftime('%H %M %S %f', '2022-03-15 18:07:37.004344')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:07:58.597597') AND strftime('%H %M %S %f', '2022-03-15 18:08:12.514986')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-15 18:08:20.981583') AND strftime('%H %M %S %f', '2022-03-15 18:08:35.038086');