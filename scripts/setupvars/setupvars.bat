@echo off

:: Copyright (C) 2018-2024 Intel Corporation
:: SPDX-License-Identifier: Apache-2.0

set SCRIPT_NAME=%~nx0

set "INTEL_OPENVINO_GENAI_DIR=%~dp0"

:: Check and Set OpenVINO Env setupvars.bat
if exist "%INTEL_OPENVINO_DIR%\setupvars.bat" (
   call "%INTEL_OPENVINO_DIR%\setupvars.bat"
) else (
   echo Set %INTEL_OPENVINO_DIR% to OpenVINO base dir , eg : set INTEL_OPENVINO_DIR=C:\OpenVINO
   exit /B 0
)

:: OpenVINO_Gen AI runtime
set "OPENVINO_LIB_PATHS=%INTEL_OPENVINO_GENAI_DIR%\runtime\bin\intel64\Release;%INTEL_OPENVINO_GENAI_DIR%samples\cpp_bin;%OPENVINO_LIB_PATHS%"

:: Add libs dirs to the PATH
set "PATH=%OPENVINO_LIB_PATHS%;%PATH%"

echo Setup OpenVINO_GenAI path
