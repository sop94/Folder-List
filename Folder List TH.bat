@echo off
setlocal

set "output_file=folder_list.txt"

REM ใช้ PowerShell และตั้ง code page เป็น UTF-8 เพื่อให้รองรับภาษาไทย
powershell -NoProfile -Command ^
    "chcp 65001 >$null; Get-ChildItem -Path . -Directory -Name | Out-File -FilePath '%output_file%' -Encoding UTF8"

echo รายชื่อ folder ถูกบันทึกลงในไฟล์ %output_file%
endlocal
pause
