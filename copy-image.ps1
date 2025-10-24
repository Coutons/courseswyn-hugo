# PowerShell script untuk copy image dengan nama yang ada spasi
# Simpan sebagai copy-image.ps1 dan jalankan

param(
    [string]$sourceFile,
    [string]$destinationDir
)

# Copy file dengan nama yang ada spasi
Copy-Item -Path $sourceFile -Destination $destinationDir -Force

Write-Host "File berhasil dicopy ke: $destinationDir"
