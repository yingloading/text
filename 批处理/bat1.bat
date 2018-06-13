set /p startip=杀死端口:
netstat -nao | findstr %startip%
set result=%ERRORLEVEL%
echo %result%
pause
::for /f "delims=" %%i in (' "netstat -nao | findstr 9082" ') do echo get %%i

for /f "tokens=5 delims= " %%i in (' " netstat -nao | findstr %startip% " ') do (
    set SysSecond=%%i
)
taskkill /F /PID  %SysSecond%
::echo %SysSecond%
::SysSeconds
::for /f "tokens=4,5 delims= " %%i in (' " netstat -nao | findstr %startip% " ') do (
::set coode = %%j
::)
::echo %coode%

pause
