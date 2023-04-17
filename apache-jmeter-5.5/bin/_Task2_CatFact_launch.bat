@ECHO OFF

set dt=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set dt=%dt: =0%

ECHO ----LAUNCHING CATFACT TEST----
cmd /c jmeter -n -t Task2_CatFact/Task2_CatFact.jmx -l Task2_CatFact/Logs/results_%dt%.jtl
ECHO ----CREATING HTML REPORT----
CD Task2_CatFact/Logs
ECHO ----HTML REPORT LOCATION - Task2_CatFact/Logs/html_%dt% ----
ECHO ----SAVED RESPONSE LOCATION - Task2_CatFact/Logs/Task2_ file ----
CD ../../
jmeter -g Task2_CatFact/Logs/results_%dt%.jtl -o Task2_CatFact/Logs/html_%dt%/
