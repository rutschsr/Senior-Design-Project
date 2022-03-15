-- For Peter Jamieson 2015 full bmp remote to local from PI

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:13:18.158822') AND strftime('%H %M %S %f', '2022-03-08 18:13:34.338106')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:13:40.304959') AND strftime('%H %M %S %f', '2022-03-08 18:13:57.220554')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:14:03.093664') AND strftime('%H %M %S %f', '2022-03-08 18:14:19.300901')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:14:23.364325') AND strftime('%H %M %S %f', '2022-03-08 18:14:39.555488')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-03-08 18:14:44.339072') AND strftime('%H %M %S %f', '2022-03-08 18:15:00.722130')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:13:18.158822') AND strftime('%H %M %S %f', '2022-03-08 18:13:34.338106')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:13:40.304959') AND strftime('%H %M %S %f', '2022-03-08 18:13:57.220554')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:14:03.093664') AND strftime('%H %M %S %f', '2022-03-08 18:14:19.300901')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:14:23.364325') AND strftime('%H %M %S %f', '2022-03-08 18:14:39.555488')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-03-08 18:14:44.339072') AND strftime('%H %M %S %f', '2022-03-08 18:15:00.722130');
