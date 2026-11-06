@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Копирую правила из %USERPROFILE%\.claude ...
copy /Y "%USERPROFILE%\.claude\CLAUDE.md" . >nul
copy /Y "%USERPROFILE%\.claude\settings.json" . >nul
robocopy "%USERPROFILE%\.claude\skills" "skills" /MIR /NFL /NDL /NJH /NJS /NP >nul
set "MEM=%USERPROFILE%\.claude\projects\C--Users-Dmitrii-AppData-Roaming-Claude-scratch-workspaces-be93451c-8013-44e3-950b-439db48822f8-66d67ecd-3fca-4b5c-a945-250c2afe067c-scratch-2026-09-04-a76ea4\memory"
if exist "%MEM%" robocopy "%MEM%" "память" *.md /NFL /NDL /NJH /NJS /NP >nul
git add -A
git diff --cached --quiet && (echo Изменений нет, копия уже свежая.) || (git commit -q -m "Обновление копии правил %date%" && git push -q && echo Копия обновлена и отправлена на GitHub.)

