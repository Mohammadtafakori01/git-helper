@echo off
setlocal enabledelayedexpansion

:menu
cls
echo Select an option:
echo 1- Commit and Push
echo 2- Merge and Update
echo 3- Create Tag and Push
set /p choice="Enter your choice (1, 2, or 3): "

if "%choice%"=="1" (
    set /p commitMessage="Enter commit message: "
    call :trim commitMessage commitMessage
    if "!commitMessage!"=="" (
        echo Commit message cannot be empty. Please try again.
        pause
        goto menu
    )
    set /p branch="Enter branch to commit to: "
    call :trim branch branch
    if "!branch!"=="" (
        echo Branch cannot be empty. Please try again.
        pause
        goto menu
    )
    git add .
    git commit -m "!commitMessage!"
    echo "!branch!"
    git push origin "!branch!"
    echo "!commitMessage!"
    pause
    goto end
) else if "%choice%"=="2" (
    set /p currentBranch="Enter current branch: "
    call :trim currentBranch currentBranch
    if "!currentBranch!"=="" (
        echo Current branch cannot be empty. Please try again.
        pause
        goto menu
    )
    set /p mergeBranch="Enter branch to merge with: "
    call :trim mergeBranch mergeBranch
    if "!mergeBranch!"=="" (
        echo Merge branch cannot be empty. Please try again.
        pause
        goto menu
    )
    git checkout dev
    git pull
    git checkout "!currentBranch!"
    git merge "!mergeBranch!"
    echo Merge completed successfully
    pause
    goto end
) else if "%choice%"=="3" (
    set /p tagName="Enter tag name: "
    call :trim tagName tagName
    if "!tagName!"=="" (
        echo Tag name cannot be empty. Please try again.
        pause
        goto menu
    )
    set /p tagMessage="Enter tag message: "
    call :trim tagMessage tagMessage
    if "!tagMessage!"=="" (
        echo Tag message cannot be empty. Please try again.
        pause
        goto menu
    )
    git tag -a "!tagName!" -m "!tagMessage!"
    git push origin "!tagName!"
    echo Tag "!tagName!" created and pushed successfully
    pause
    goto end
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)

:end
exit

:trim
set string=!%2!
for /f "tokens=* delims= " %%a in ("!string!") do set %1=%%a
exit /b
