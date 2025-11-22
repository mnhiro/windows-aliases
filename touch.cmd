@echo off
setlocal

rem --- 引数を取得（引用符を外す） ---
set "TARGET=%~1"

rem --- 引数がない場合は終了 ---
if "%TARGET%"=="" (
    echo Please set file name.
    goto :EOF
)

rem --- ファイルが存在しない場合のみ、空ファイルを作成 ---
rem (これがないと、既存ファイルの中身を消してしまう危険があります)
if not exist "%TARGET%" (
    type nul > "%TARGET%"
    echo Create new file: %TARGET%
) else (
    echo Edit the file: %TARGET%
)

rem --- VSCodeで開く ---
code "%TARGET%"

endlocal