--For PythonDivideNoPrint

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:44.677264') AND strftime('%H %M %S %f', '2021-11-01 17:31:45.755323')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:47.540515') AND strftime('%H %M %S %f', '2021-11-01 17:31:48.438043')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:48.601348') AND strftime('%H %M %S %f', '2021-11-01 17:31:49.830004')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:50.047453') AND strftime('%H %M %S %f', '2021-11-01 17:31:50.838119')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:51.177932') AND strftime('%H %M %S %f', '2021-11-01 17:31:52.283953')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:53.361053') AND strftime('%H %M %S %f', '2021-11-01 17:31:54.286519')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:54.409539') AND strftime('%H %M %S %f', '2021-11-01 17:31:55.252920')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:55.949303') AND strftime('%H %M %S %f', '2021-11-01 17:31:56.072032')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:56.465331') AND strftime('%H %M %S %f', '2021-11-01 17:31:57.354621')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:57.952424') AND strftime('%H %M %S %f', '2021-11-01 17:31:59.955124')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:00.147361') AND strftime('%H %M %S %f', '2021-11-01 17:32:00.966749')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:01.482978') AND strftime('%H %M %S %f', '2021-11-01 17:32:02.301981')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:02.752350') AND strftime('%H %M %S %f', '2021-11-01 17:32:03.731546')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:03.800985') AND strftime('%H %M %S %f', '2021-11-01 17:32:04.657351')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:07.044983') AND strftime('%H %M %S %f', '2021-11-01 17:32:07.942310')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:08.597375') AND strftime('%H %M %S %f', '2021-11-01 17:32:09.399994')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:44.677264') AND strftime('%H %M %S %f', '2021-11-01 17:31:45.755323')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:47.540515') AND strftime('%H %M %S %f', '2021-11-01 17:31:48.438043')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:48.601348') AND strftime('%H %M %S %f', '2021-11-01 17:31:49.830004')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:50.047453') AND strftime('%H %M %S %f', '2021-11-01 17:31:50.838119')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:51.177932') AND strftime('%H %M %S %f', '2021-11-01 17:31:52.283953')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:53.361053') AND strftime('%H %M %S %f', '2021-11-01 17:31:54.286519')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:54.409539') AND strftime('%H %M %S %f', '2021-11-01 17:31:55.252920')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:55.949303') AND strftime('%H %M %S %f', '2021-11-01 17:31:56.072032')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:56.465331') AND strftime('%H %M %S %f', '2021-11-01 17:31:57.354621')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:57.952424') AND strftime('%H %M %S %f', '2021-11-01 17:31:59.955124')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:00.147361') AND strftime('%H %M %S %f', '2021-11-01 17:32:00.966749')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:01.482978') AND strftime('%H %M %S %f', '2021-11-01 17:32:02.301981')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:02.752350') AND strftime('%H %M %S %f', '2021-11-01 17:32:03.731546')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:03.800985') AND strftime('%H %M %S %f', '2021-11-01 17:32:04.657351')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:07.044983') AND strftime('%H %M %S %f', '2021-11-01 17:32:07.942310')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:32:08.597375') AND strftime('%H %M %S %f', '2021-11-01 17:32:09.399994');
