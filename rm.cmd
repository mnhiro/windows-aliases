@echo off
setlocal

rem 引数（ファイル名）を取得
set "TARGET=%~1"

if "%TARGET%"=="" (
    echo Please set filenama.
    goto :EOF
)

if not exist "%TARGET%" (
    echo Not found file: %TARGET%
    goto :EOF
)

rem ファイルを削除（確認メッセージが出るように /p を推奨）
rem 確認なしで消したい場合は /p を消してください
del /p "%TARGET%"

endlocal