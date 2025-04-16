@echo off
echo =====================================
echo     Diagnóstico de Rede - Windows
echo =====================================

echo.
echo [1] Verificando IP local...
ipconfig
echo.

echo [2] Testando conexão com o gateway...
ping 192.168.0.1
echo.

echo [3] Testando DNS do Google...
ping 8.8.8.8
echo.

echo [4] Testando resolução de nomes (www.google.com)...
ping www.google.com
echo.

echo [5] Rastreando rota até o Google...
tracert www.google.com
echo.

pause
