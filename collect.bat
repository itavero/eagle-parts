@echo off
SET RepoPath=%~dp0
SET CollectionPath=%RepoPath%collection

echo Collections folder:    %CollectionPath%
echo Cleaning the folder..
if exist %CollectionPath% (rmdir "%CollectionPath%" /s /q)

if not exist %CollectionPath% (mkdir "%CollectionPath%")

for /R %RepoPath% %%i in (*.LBR) do (
    if not exist %CollectionPath%\%%~nxi (
        xcopy %%~fi %CollectionPath% /I /G /Q /K
    ) else (
        echo Already copied %%~nxi
    )
)

echo Done.
