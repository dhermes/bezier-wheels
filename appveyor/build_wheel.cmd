:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
::     https://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.
::
:: Build `bezier` wheel.

@ECHO OFF

IF "%PYTHON%" == "C:\\Python27-x64" (
  cmd /E:ON /V:ON /C ^
    "%APPVEYOR_BUILD_FOLDER%\\bezier\\appveyor\\windows_py27_64bit.cmd" ^
    python -m pip wheel -v ^
    --wheel-dir="%APPVEYOR_BUILD_FOLDER%\\wheelhouse" ^
    "%APPVEYOR_BUILD_FOLDER%\\bezier"
) ELSE (
  python -m pip wheel -v ^
    --wheel-dir="%APPVEYOR_BUILD_FOLDER%\\wheelhouse" ^
    "%APPVEYOR_BUILD_FOLDER%\\bezier"
)
dir /s /b "%APPVEYOR_BUILD_FOLDER%\\wheelhouse"