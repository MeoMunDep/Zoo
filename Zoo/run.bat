@echo off
title Zoo Bot by @MeoMunDep
color 0A

cd ..
if exist node_modules (
    echo Found node_modules in parent directory
    cd %~dp0
) else (
    cd %~dp0
    echo node_modules not found in parent directory
)

:MENU
cls
echo =================================================================
echo    Zoo BOT SETUP AND RUN SCRIPT by @MeoMunDep
echo =================================================================
echo.
echo Current directory: %CD%
echo Parent node_modules: %~dp0..\node_modules
echo.
echo 1. Install/Update Node.js Dependencies
echo 2. Create/Edit Configuration Files
echo 3. Run the Bot
echo 4. Exit
echo.
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto INSTALL
if "%choice%"=="2" goto CONFIG
if "%choice%"=="3" goto RUN
if "%choice%"=="4" goto EXIT

:INSTALL
cls
echo Checking node_modules location...
if exist "..\node_modules" (
    cd ..
    echo Installing/Updating dependencies in parent directory...
    npm install user-agents axios colors p-limit https-proxy-agent socks-proxy-agent crypto-js ws uuid xlsx readline-sync
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    npm install user-agents axios colors p-limit https-proxy-agent socks-proxy-agent crypto-js ws uuid xlsx readline-sync
)
echo.
echo Dependencies installation completed!
pause
goto MENU

:CONFIG
cls
echo Creating configuration files...

if not exist configs.json (
    echo {> configs.json
    echo   "timeZone": "en-US",>> configs.json
    echo   "rotateProxy": false,>> configs.json
    echo   "skipInvalidProxy": false,>> configs.json
    echo   "proxyRotationInterval": 2,>> configs.json
    echo   "delayEachAccount": [1, 81],>> configs.json
    echo   "timeToRestartAllAccounts": 300,>> configs.json
    echo   "howManyAccountsRunInOneTime": 10,>> configs.json
    echo   "doTasks": true,>> configs.json
    echo   "referralCode": "ref6713068747",>> configs.json
    echo   "buyBoosts": {>> configs.json
    echo     "amounts": [1, 2, 3],>> configs.json
    echo     "type": ["5_boost_for_24_hours", "10_boost_for_24_hours", "15_boost_for_24_hours"]>> configs.json
    echo   },>> configs.json
    echo   "buyAnimals": {>> configs.json
    echo     "nameForEachPosition": [
      "turtle",
      "rabbit",
      "squirrel",
      "flamingo",
      "zebra",
      "moose",
      "giraffe",
      "parrot",
      "fox",
      "penguin",
      "crocodile",
      "panda",
      "wolf",
      "bear",
      "dolphin",
      "platypus",
      "capybara",
      "pepe",
      "doge",
      "elephant",
      "rhinoceros",
      "orca",
      "tiger",
      "shark",
      "lion",
      "lion",
      "lion",
      "lion",
      "lion",
      "lion",
      "lion",
      "lion",
      "lion",
      "lion"
    ]>> configs.json
    echo   },>> configs.json
    echo   "upgradeAnimals": {>> configs.json
    echo     "amountOfEachPosition": [
      10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
      10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
    ]>> configs.json
    echo   },>> configs.json
    echo "feeding": "7 day">> configs.json
    echo "riddleCode": "meomundep">> configs.json
    echo }>> configs.json
    echo Created configs.json
)

if not exist boost.yaml (
    echo # Boost configurations> boost.yaml
    echo - { key: '5_boost_for_24_hours', price: 50, boost: 5, days: 1 }>> boost.yaml
    echo - { key: '10_boost_for_24_hours', price: 100, boost: 10, days: 1 }>> boost.yaml
    echo - { key: '15_boost_for_24_hours', price: 250, boost: 15, days: 1 }>> boost.yaml
    echo - { key: '20_boost_for_24_hours', price: 1000, boost: 20, days: 1 }>> boost.yaml
    echo - { key: '25_boost_for_24_hours', price: 5000, boost: 25, days: 1 }>> boost.yaml
    echo - { key: '30_boost_for_24_hours', price: 17000, boost: 30, days: 3 }>> boost.yaml
    echo - { key: '35_boost_for_3_days', price: 25000, boost: 35, days: 3 }>> boost.yaml
    echo - { key: '40_boost_for_3_days', price: 40000, boost: 40, days: 3 }>> boost.yaml
    echo - { key: '45_boost_for_3_days', price: 60000, boost: 45, days: 3 }>> boost.yaml
    echo - { key: '50_boost_for_3_days', price: 90000, boost: 50, days: 3 }>> boost.yaml
    echo - { key: '60_boost_for_7_days', price: 225000, boost: 60, days: 7 }>> boost.yaml
    echo - { key: '70_boost_for_7_days', price: 350000, boost: 70, days: 7 }>> boost.yaml
    echo - { key: '80_boost_for_7_days', price: 525000, boost: 80, days: 7 }>> boost.yaml
    echo - { key: '90_boost_for_7_days', price: 800000, boost: 90, days: 7 }>> boost.yaml
    echo - { key: '100_boost_for_7_days', price: 1200000, boost: 100, days: 7 }>> boost.yaml
    echo Created boost.yaml
)

if not exist animals.csv (
    echo turtle , rabbit , squirrel , flamingo , zebra , moose , giraffe , parrot , fox , penguin , crocodile , panda , wolf , bear , dolphin , platypus , capybara , pepe , doge , elephant , rhinoceros , orca , tiger , shark , lion>>> animals.csv
    echo Created animals.csv
)

if not exist datas.txt (
    type nul > datas.txt
    echo Created datas.txt
)
if not exist wallets.txt (
    type nul > wallets.txt
    echo Created wallets.txt
)
if not exist proxies.txt (
    type nul > proxies.txt
    echo Created proxies.txt
)

echo.
echo Configuration files have been created/checked.
echo Please edit the files with your data before running the bot.
echo.
pause
goto MENU

:RUN
cls
echo Starting the bot...
echo Checking configuration files...
if not exist configs.json (
    echo ERROR: configs.json is missing! Please run option 2 first.
    pause
    goto MENU
)
if not exist boost.yaml (
    echo ERROR: boost.yaml is missing! Please run option 2 first.
    pause
    goto MENU
)
if not exist animals.csv (
    echo ERROR: animals.csv is missing! Please run option 2 first.
    pause
    goto MENU
)

if exist "..\node_modules" (
    echo Using node_modules from parent directory
) else (
    echo Using node_modules from current directory
)
node meomundep
pause
goto MENU

:EXIT
exit
