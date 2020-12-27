## остановка выполнения запланированной задачи TaskCopy
Stop-ScheduledTask -TaskName "TaskCopy"

## сравнение исходного и скопированного файлов
Compare-Object -ReferenceObject (Get-Content -Path C:\Windows\apppatch\sysmain.sdb) -DifferenceObject (Get-Content -Path C:\LAB6\share\sysmain.sdb)

## проверка целостности исходного файла
sfc /VERIFYFILE=C:\Windows\apppatch\sysmain.sdb

## проверка целостности конечного файла
sfc /VERIFYFILE=C:\LAB6\share\sysmain.sdb    # Защита ресурсов Windows не может выполнить запрошенную операцию