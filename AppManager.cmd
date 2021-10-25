@echo off

:Menu
Echo ----------------------------------------------------------------
Echo App Manager, select the apps you want to install
Echo Ver: 21.10.18.2199
Echo If you are running Windows 10, make sure to install winget
Echo ----------------------------------------------------------------
Echo 1 - Visual Studio Code
Echo 2 - Notepad++
Echo 3 - Firefox
Echo 4 - Chrome
Echo 5 - Scratch 3
Echo 6 - Turbowarp
Echo 7 - Firefox ESR
echo 8 - Firefox Nightly
echo 9 - Python 3
echo 10 - Python 2
echo 11 - Ubuntu 20.04 (WSL)
echo 12 - Spotify
echo 13 PyCharm Community
echo 17 Windows Terminal
echo 18 Windows PC Health Check
echo ------------------------
echo Groups (testing, unstable)
echo ------------------------
echo 14 Web Development (Group)
echo 15 Python Development (Group)
echo 16 Scratch Development (Group)
echo Exit - Type Exit to exit the script

Set /P App=Selection #
If %App%=="" GOTO Menu
If %App%==1 GOTO VSCODE
If %App%==2 GOTO NPP
If %App%==3 GOTO FF
If %App%==4 GOTO GGL
If %App%==5 GOTO SCR3
If %App%==6 GOTO TW
If %App%==7 GOTO FF-ESR
If %App%==8 GOTO FF-NIGHTLY
If %App%==9 GOTO PY3
If %App%==10 GOTO PY2
If %App%==11 GOTO UBUWSL
If %App%==12 GOTO SPOTIFY
If %App%==13 GOTO PYCHARM
If %App%==14 GOTO WEBDEV
If %App%==15 GOTO PYDEV
If %App%==16 GOTO SCRDEV
If %App%==17 GOTO WINTERM
If %App%==18 GOTO WINPCHEALTH
If %App%==Exit GOTO Exit

:VSCODE
echo Installing VSCODE
winget install --silent -e Microsoft.VisualStudioCode
GOTO Menu

:NPP
echo Installing NPP
winget install --silent -e Notepad++.Notepad++
GOTO Menu

:FF
echo Installing Firefox
winget install --silent -e Mozilla.Firefox
GOTO Menu

:GGL
echo Installing Chrome
winget install --silent -e Google.Chrome
GOTO Menu

:SCR3
echo Installing Scratch3
winget install --silent -e MITMediaLab.Scratch.3
GOTO Menu

:TW
echo Installing Turbowarp
winget install --silent -e GarboMuffin.TurboWarp
GOTO Menu

:FF-ESR
echo Installing Firefox ESR
winget install --silent -e Mozilla.FirefoxESR
GOTO Menu

:FF-NIGHTLY
echo Installing Firefox Nightly
winget install --silent -e Mozilla.Firefox.Nightly
GOTO Menu

:PY3
echo Installing Python 3
winget install --silent -e Python.Python.3
GOTO Menu

:PY2
echo Installing Python 2
winget install --silent -e Python.Python.2
GOTO Menu

:UBUWSL
echo Installing Ubuntu WSL
winget install --silent -e Canonical.Ubuntu
GOTO Menu

:SPOTIFY
echo Installing Spotify
winget install --silent -e Spotify.Spotify
GOTO Menu

:PYCHARM
echo Installing PyCharm
winget install --silent -e JetBrains.PyCharm.Community
GOTO Menu

:WEBDEV
echo Installing WebDev Group. (2 packages)
winget install --silent -e Mozilla.Firefox
winget install --silent -e Microsoft.VisualStudioCode

:PYDEV
echo Installing Python Development group. (2 packages)
winget install --silent -e Python.Python.3
winget install --silent -e JetBrains.PyCharm.Community

:SCRDEV
echo Installing Scratch Development group. (2 Packages)
winget install --silent -e MITMediaLab.Scratch.3
winget install --silent -e GarboMuffin.TurboWarp

:WINTERM
echo Installing Windows Terminal
winget install --silent -e 9N0DX20HK701

:WINPCHEALTH
echo Installing Windows PC Health Checker
winget install --silent -e Microsoft.WindowsPCHealthCheck

:Custom
echo Installing requested app.
Set /P SEL=STRING: 
winget search %SEL%

:Exit
exit