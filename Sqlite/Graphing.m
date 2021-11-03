%%SQLITE Graphing
% Sam Rutschilling 2021-10-26

close all
clear all

%% Open SQLITE File
filename='10ms500pingNoPrintout.sqlite3'; %Set File name here

conn=sqlite(filename, 'readonly')

sqlquery='SELECT date FROM PowerMeasurement';
sqlquery2='SELECT wattage FROM PowerMeasurement';

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
plot(datesdouble,wattagedouble);
xtickformat('yyyy-MM-dd mm:ss');
ylim([0,10]);
title(filename)
ylabel('Wattage')
xlabel('DateTime')