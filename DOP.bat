@echo off
rem =====================================================================
rem  DOP.bat - bam de mo app DOP (ten cu: Dop Vo Doi; doi ten 19/09/2026). P1 v023-windows 18/09/2026, muc 3 KE-HOACH-WINDOWS.md.
rem  DONG CUA SO APP LA TAT APP (nhu thoat app tren Mac): lo tu tam dung, mo lai bam Tiep tuc.
rem  Bam lan 2 khi app dang mo -> chi dua cua so len. Khong co nut Tat rieng.
rem  Viec that nam trong app\mo-dop-vo-doi.ps1 (chay an, khong hien cua so den; nang cap = thay thu muc app\).
rem =====================================================================
set "GOC=%~dp0"
if "%GOC:~-1%"=="\" set "GOC=%GOC:~0,-1%"
if not exist "%GOC%\app\mo-dop-vo-doi.ps1" (
  echo Thieu %GOC%\app\mo-dop-vo-doi.ps1
  echo Thu muc app\ bi thieu hoac bi doi cho. Giai nen lai goi, giu nguyen bo cuc thu muc.
  pause
  exit /b 1
)
start "" /min powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File "%GOC%\app\mo-dop-vo-doi.ps1" -Goc "%GOC%"
exit /b 0
