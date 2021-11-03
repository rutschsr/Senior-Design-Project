--For 10ms500pingNoPrintout

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:02:27.864440') AND strftime('%H %M %S %f', '2021-11-01 16:02:30.686099')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:02:31.845545') AND strftime('%H %M %S %f', '2021-11-01 16:02:41.401102')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:02:48.351597') AND strftime('%H %M %S %f', '2021-11-01 16:02:57.661253')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:03:04.533569') AND strftime('%H %M %S %f', '2021-11-01 16:03:13.815039')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:13:02.671918') AND strftime('%H %M %S %f', '2021-11-01 16:13:12.473326')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:13:30.482279') AND strftime('%H %M %S %f', '2021-11-01 16:13:39.939542')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:13:57.268808') AND strftime('%H %M %S %f', '2021-11-01 16:14:06.754645')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:18.288296') AND strftime('%H %M %S %f', '2021-11-01 16:14:27.827761')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:18.288296') AND strftime('%H %M %S %f', '2021-11-01 16:14:27.827761')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:32.271933') AND strftime('%H %M %S %f', '2021-11-01 16:14:41.843042')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:48.753017') AND strftime('%H %M %S %f', '2021-11-01 16:14:58.185639')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:15:06.295542') AND strftime('%H %M %S %f', '2021-11-01 16:15:15.809775')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:15:19.831972') AND strftime('%H %M %S %f', '2021-11-01 16:15:31.296194')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 16:15:42.309949') AND strftime('%H %M %S %f', '2021-11-01 16:15:51.811732')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:02:27.864440') AND strftime('%H %M %S %f', '2021-09-30 11:08:13.729347')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:02:31.845545') AND strftime('%H %M %S %f', '2021-11-01 16:02:41.401102')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:02:48.351597') AND strftime('%H %M %S %f', '2021-11-01 16:02:57.661253')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:03:04.533569') AND strftime('%H %M %S %f', '2021-11-01 16:03:13.815039')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:13:02.671918') AND strftime('%H %M %S %f', '2021-11-01 16:13:12.473326')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:13:30.482279') AND strftime('%H %M %S %f', '2021-11-01 16:13:39.939542')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:13:57.268808') AND strftime('%H %M %S %f', '2021-11-01 16:14:06.754645')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:18.288296') AND strftime('%H %M %S %f', '2021-11-01 16:14:27.827761')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:18.288296') AND strftime('%H %M %S %f', '2021-11-01 16:14:27.827761')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:32.271933') AND strftime('%H %M %S %f', '2021-11-01 16:14:41.843042')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:14:48.753017') AND strftime('%H %M %S %f', '2021-11-01 16:14:58.185639')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:15:06.295542') AND strftime('%H %M %S %f', '2021-11-01 16:15:15.809775')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:15:19.831972') AND strftime('%H %M %S %f', '2021-11-01 16:15:31.296194')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 16:15:42.309949') AND strftime('%H %M %S %f', '2021-11-01 16:15:51.811732');

