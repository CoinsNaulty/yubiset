@ECHO OFF
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

REM
REM Arg 1: User name
REM

set branded_user_name=%~1 (itemis AG)
set branded_user_comment=Vocational OpenPGP key of itemis AG's %~1

REM What follows is a trick to get the variables into the context of the calling script (which should be a local context as well) without polluting the global env.
REM See https://stackoverflow.com/a/16167938
endlocal&set "branded_user_name=%branded_user_name%"&set "branded_user_comment=%branded_user_comment%"