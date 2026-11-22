@echo off
setlocal
set "APP=%~dp0app\index.html"
set "PROFILE=%LOCALAPPDATA%\ManasResumeMaker"
set "BROWSER="
for %%P in ("%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%LocalAppData%\Google\Chrome\Application\chrome.exe") do if exist %%P if not defined BROWSER set "BROWSER=%%~P"
if not defined BROWSER goto nobrowser
start "" "%BROWSER%" "--app=file:///%APP:\=/%" "--user-data-dir=%PROFILE%" --window-size=1366,860 --no-first-run --disable-features=Translate
exit /b
:nobrowser
start "" "%APP%"
exit /b
