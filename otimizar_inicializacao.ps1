# Mostra programas que iniciam com o Windows e permite desabilitar

Write-Host "Listando aplicativos na inicializacao..." -ForegroundColor Cyan
$startupApps = Get-CimInstance Win32_StartupCommand | Select-Object Name, Command, Location
$startupApps | Format-Table -AutoSize

Write-Host "`nPara desabilitar programas na inicializaÃ§Ã£o, use o Gerenciador de Tarefas (Ctrl+Shift+Esc) > Inicializar." -ForegroundColor Yellow
