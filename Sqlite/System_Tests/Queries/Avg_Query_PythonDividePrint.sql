--For PythonDividePrint

-- There is way too much data to reasonably create a query like this, so I stopped at some point because the query was getting
-- too large and I wasn't even halfway done. Especially considering we really only needed to run each test once or twice

-- The average of the ping current values, this will be the second value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:24.274869') AND strftime('%H %M %S %f', '2021-11-01 17:30:24.324468')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:30.363609') AND strftime('%H %M %S %f', '2021-11-01 17:30:31.277133')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:31.412044') AND strftime('%H %M %S %f', '2021-11-01 17:30:31.547616')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:36.413026') AND strftime('%H %M %S %f', '2021-11-01 17:30:38.035373')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:38.239721') AND strftime('%H %M %S %f', '2021-11-01 17:30:39.100115')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:40.570489') AND strftime('%H %M %S %f', '2021-11-01 17:30:41.401782')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:41.618699') AND strftime('%H %M %S %f', '2021-11-01 17:30:45.681942')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:46.418897') AND strftime('%H %M %S %f', '2021-11-01 17:30:46.582908')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:47.115177') AND strftime('%H %M %S %f', '2021-11-01 17:30:47.238042')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:47.742185') AND strftime('%H %M %S %f', '2021-11-01 17:30:48.557393')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:48.778261') AND strftime('%H %M %S %f', '2021-11-01 17:30:48.913834')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:50.179110') AND strftime('%H %M %S %f', '2021-11-01 17:30:50.440998')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:51.419896') AND strftime('%H %M %S %f', '2021-11-01 17:30:51.583907')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:52.497448') AND strftime('%H %M %S %f', '2021-11-01 17:30:52.783804')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:53.095162') AND strftime('%H %M %S %f', '2021-11-01 17:30:53.328507')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:53.520954') AND strftime('%H %M %S %f', '2021-11-01 17:30:54.377785')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:55.278453') AND strftime('%H %M %S %f', '2021-11-01 17:30:57.334778')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:58.223450') AND strftime('%H %M %S %f', '2021-11-01 17:30:59.435671')
	OR strftime('%H %M %S %f', date) BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:00.090912') AND strftime('%H %M %S %f', '2021-11-01 17:31:00.934635')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:31:00.947202')
UNION
-- The average of the nonping current values, this will be the first value displayed
SELECT avg(wattage) FROM PowerMeasurement 
	WHERE strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:24.274869') AND strftime('%H %M %S %f', '2021-11-01 17:30:24.324468')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:30.363609') AND strftime('%H %M %S %f', '2021-11-01 17:30:31.277133')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:31.412044') AND strftime('%H %M %S %f', '2021-11-01 17:30:31.547616')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:36.413026') AND strftime('%H %M %S %f', '2021-11-01 17:30:38.035373')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:38.239721') AND strftime('%H %M %S %f', '2021-11-01 17:30:39.100115')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:40.570489') AND strftime('%H %M %S %f', '2021-11-01 17:30:41.401782')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:41.618699') AND strftime('%H %M %S %f', '2021-11-01 17:30:45.681942')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:46.418897') AND strftime('%H %M %S %f', '2021-11-01 17:30:46.582908')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:47.115177') AND strftime('%H %M %S %f', '2021-11-01 17:30:47.238042')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:47.742185') AND strftime('%H %M %S %f', '2021-11-01 17:30:48.557393')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:48.778261') AND strftime('%H %M %S %f', '2021-11-01 17:30:48.913834')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:50.179110') AND strftime('%H %M %S %f', '2021-11-01 17:30:50.440998')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:51.419896') AND strftime('%H %M %S %f', '2021-11-01 17:30:51.583907')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:52.497448') AND strftime('%H %M %S %f', '2021-11-01 17:30:52.783804')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:53.095162') AND strftime('%H %M %S %f', '2021-11-01 17:30:53.328507')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:55.278453') AND strftime('%H %M %S %f', '2021-11-01 17:30:54.377785')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:53.520954') AND strftime('%H %M %S %f', '2021-11-01 17:30:57.334778')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:30:58.223450') AND strftime('%H %M %S %f', '2021-11-01 17:30:59.435671')
	OR strftime('%H %M %S %f', date) NOT BETWEEN strftime('%H %M %S %f', '2021-11-01 17:31:00.090912') AND strftime('%H %M %S %f', '2021-11-01 17:31:00.934635')
	AND strftime('%H %M %S %f', date) < strftime('%H %M %S %f', '2021-11-01 17:31:00.947202');
