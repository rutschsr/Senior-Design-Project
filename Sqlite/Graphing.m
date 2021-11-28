%%SQLITE Graphing
% Sam Rutschilling 2021-10-26

close all
clear all

%% Open SQLITE File
filename='PythonFileWriteTest10ms1.sqlite3'; %Set File name here

conn=sqlite(filename, 'readonly')

sqlquery='SELECT date FROM PowerMeasurement WHERE date BETWEEN ''2021-10-28 16:56:02.51'' AND ''2021-10-29 14:30:00''';
sqlquery2='SELECT wattage FROM PowerMeasurement WHERE date BETWEEN ''2021-10-28 16:56:02.51'' AND ''2021-10-29 14:30:00:00''';

% Older Versions of the recording script require different SQL Queries
%sqlquery='SELECT date FROM current';
%sqlquery2='SELECT current FROM current';

%% SQL Queries
dates=fetch(conn,sqlquery);
wattage=fetch(conn,sqlquery2);

%Convert data types to plotable data types
datesdouble=datetime(dates);
wattagedouble=str2double(string(wattage));
    
%% PLOT    
figure
plot(datesdouble,wattagedouble);
xtickformat('yyyy-MM-dd mm:ss');
ylim([2,4]);
title(filename)
ylabel('Wattage')
xlabel('DateTime')