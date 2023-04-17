@ECHO OFF

set dt=%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
set dt=%dt: =0%

ECHO ----LAUNCHING BOREDAPI TEST----
cmd /c jmeter -n -t Task1_BoredAPI/Task1_BoredAPI.jmx -l Task1_BoredAPI/Logs/results_%dt%.jtl
ECHO ----CREATING HTML REPORT----
CD Task1_BoredAPI/Logs
ECHO ----HTML REPORT LOCATION - Task1_BoredAPI/Logs/html_%dt% ----
ECHO ----ACTIVITY RESPONSES LOCATION - Task1_BoredAPI/Logs/Activity_Responses file ----
CD ../../
jmeter -g Task1_BoredAPI/Logs/results_%dt%.jtl -o Task1_BoredAPI/Logs/html_%dt%/
