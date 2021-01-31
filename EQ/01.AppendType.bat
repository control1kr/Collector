@ECHO OFF
SET OUTFILE=EQStatus_FROM_EQ.txt
SET INTERVAL=10

IF EXIST %OUTFILE% DEL %OUTFILE%

FOR /F "usebackq tokens=1,2* eol=; delims=," %%A IN (EQStatus.txt) DO (
    TIMEOUT 1 > NULL
    (ECHO %%A,%%B,%%C) >> %OUTFILE%
)

(ECHO a,,c) >> %OUTFILE%
