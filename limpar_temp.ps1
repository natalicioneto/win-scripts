# limpa arquivos temporÃ¡rios, cache do Edge e esvazia a lixeira

Write-Host "Iniciando limpeza do sistema..." -ForegroundColor Cyan

# Temp do usuÃ¡rio
Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue

# Temp do sistema
Remove-Item "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue

# Cache do Microsoft Edge (opcional)
$edgeCache = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache"
if (Test-Path $edgeCache) {
    Remove-Item "$edgeCache\*" -Recurse -Force -ErrorAction SilentlyContinue
}

# Lixeira
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

Write-Host "Limpeza concluÃ­da com sucesso!" -ForegroundColor Green
