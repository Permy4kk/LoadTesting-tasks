@ECHO OFF

set dt=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set dt=%dt: =0%

ECHO ----LAUNCHING GENDERIZE TEST----
cmd /c jmeter -n -t Task3_Genderize/Task3_Genderize.jmx -l Task3_Genderize/Logs/results_%dt%.jtl
ECHO ----CREATING HTML REPORT----
CD Task3_Genderize/Logs
ECHO ----HTML REPORT LOCATION - Task3_Genderize/Logs/html_%dt% ----
ECHO ----SAVED RESPONSE LOCATION - Task3_Genderize/Logs/Task2_ file ----
CD ../../
jmeter -g Task3_Genderize/Logs/results_%dt%.jtl -o Task3_Genderize/Logs/html_%dt%/
