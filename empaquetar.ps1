# Crea BarrasRGB.zip (solo los archivos del fondo) en la carpeta de arriba.
# Uso: clic derecho > "Ejecutar con PowerShell", o:  powershell -File empaquetar.ps1
$src = $PSScriptRoot
$zip = Join-Path (Split-Path $src -Parent) "BarrasRGB.zip"
$items = "index.html", "LivelyInfo.json", "LivelyProperties.json", "project.json", "thumbnail.png", "images", "videos"
if (Test-Path $zip) { Remove-Item $zip -Confirm:$false }
Compress-Archive -Path ($items | ForEach-Object { Join-Path $src $_ }) -DestinationPath $zip
Write-Host "Listo: $zip"
