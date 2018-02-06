@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  ToDoApp startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and TO_DO_APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%/app;%APP_HOME%\lib\ToDoApp.jar;%APP_HOME%\lib\ratpack-core-1.4.5.jar;%APP_HOME%\lib\ratpack-groovy-1.4.5.jar;%APP_HOME%\lib\unirest-java-1.4.9.jar;%APP_HOME%\lib\gson-2.8.2.jar;%APP_HOME%\lib\json-simple-1.1.jar;%APP_HOME%\lib\slf4j-simple-1.7.25.jar;%APP_HOME%\lib\netty-codec-http-4.1.6.Final.jar;%APP_HOME%\lib\netty-handler-4.1.6.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.6.Final-linux-x86_64.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\reactive-streams-1.0.0.final.jar;%APP_HOME%\lib\caffeine-2.3.1.jar;%APP_HOME%\lib\javassist-3.19.0-GA.jar;%APP_HOME%\lib\jackson-databind-2.7.5.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.7.5.jar;%APP_HOME%\lib\jackson-datatype-guava-2.7.5.jar;%APP_HOME%\lib\snakeyaml-1.15.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.7.5.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.7.5.jar;%APP_HOME%\lib\groovy-all-2.4.3.jar;%APP_HOME%\lib\ratpack-guice-1.4.5.jar;%APP_HOME%\lib\httpclient-4.5.2.jar;%APP_HOME%\lib\httpasyncclient-4.1.1.jar;%APP_HOME%\lib\httpmime-4.5.2.jar;%APP_HOME%\lib\json-20160212.jar;%APP_HOME%\lib\netty-codec-4.1.6.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.6.Final.jar;%APP_HOME%\lib\netty-transport-4.1.6.Final.jar;%APP_HOME%\lib\netty-common-4.1.6.Final.jar;%APP_HOME%\lib\jackson-annotations-2.7.0.jar;%APP_HOME%\lib\jackson-core-2.7.5.jar;%APP_HOME%\lib\guice-4.1.0.jar;%APP_HOME%\lib\guice-multibindings-4.1.0.jar;%APP_HOME%\lib\httpcore-4.4.4.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.9.jar;%APP_HOME%\lib\httpcore-nio-4.4.4.jar;%APP_HOME%\lib\netty-resolver-4.1.6.Final.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar
cd "%APP_HOME%/app"

@rem Execute ToDoApp
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TO_DO_APP_OPTS%  -classpath "%CLASSPATH%" ua.poosh.todo.Server %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable TO_DO_APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%TO_DO_APP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
