## Удалить все файлы в текущем каталоге, кроме последнего созданного
$from = 'C:\TEST'
>>  $last = (Get-ChildItem -Path $from | Sort-Object LastWriteTime | Select-Object -Last 1).Name  # поиск последнего созданного файла
>>  Get-ChildItem -Path $from -Exclude $last | Remove-Item -Force
