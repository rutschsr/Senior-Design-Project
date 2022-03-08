-- For C Subtract NoPrint1

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:24:33.555214') AND strftime('%H %M %S %f', '2022-02-08 17:24:59.095930')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:25:11.662014') AND strftime('%H %M %S %f', '2022-02-08 17:25:36.932869')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:25:50.453353') AND strftime('%H %M %S %f', '2022-02-08 17:26:15.560338')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:26:30.726788') AND strftime('%H %M %S %f', '2022-02-08 17:26:55.821821')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2022-02-08 17:27:08.470199') AND strftime('%H %M %S %f', '2022-02-08 17:27:33.741008')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:24:33.555214') AND strftime('%H %M %S %f', '2022-02-08 17:24:59.095930')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:25:11.662014') AND strftime('%H %M %S %f', '2022-02-08 17:25:36.932869')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:25:50.453353') AND strftime('%H %M %S %f', '2022-02-08 17:26:15.560338')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:26:30.726788') AND strftime('%H %M %S %f', '2022-02-08 17:26:55.821821')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2022-02-08 17:27:08.470199') AND strftime('%H %M %S %f', '2022-02-08 17:27:33.741008');
