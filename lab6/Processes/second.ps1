## Разрешаем выполнение исполняемых файлов .ps1 извне
Set-ExecutionPolicy Unrestricted    # отвечаем Y (да)

## Код файла copy.ps1 для копирования файла из Windows на ресурс с продолжением копирования после прерывания
$name = [System.Net.Dns]::GetHostName()
Xcopy C:\Windows\apppatch\sysmain.sdb \\$name\temp\sysmain.sdb /z

## Запуск исполняемого файла в PowerShell
.\copy.ps1    # отвечаем F (копируем файл)