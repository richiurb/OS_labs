## 3.2.1 : узнаем, можно ли остановить или выключить службу DNS-клиента
Get-Service -ServiceName 'Dnscache' | SELECT CanPauseAndContinue, CanShutDown, CanStop | fl    # CanStop : False
# так как службу DNS-клиента невозможно остановить в Windows 10, то ищем другую службу, которую возможно остановить

## 3.2.1 : узнаем, можно ли остановить или выключить службу поддержки Bluetooth
Get-Service -ServiceName 'bthserv' | SELECT CanPauseAndContinue, CanShutDown, CanStop | fl    # CanStop : False

## 3.2.1 : узнаем, можно ли остановить или выключить диспетчер печати
Get-Service -ServiceName 'Spooler' | SELECT CanPauseAndContinue, CanShutDown, CanStop | fl    # CanStop : True

## 3.2.1 : создание командного файла
New-Item -Path 'C:\LAB6\stopSpooler.ps1' -ItemType File

## 3.2.1 : остановка диспетчера печати (в stopSpooler.ps1)
Stop-Service 'Spooler'

## 3.2.2 : с временной задержкой, создание файла, содержащего обновленный список служб, запущенных в системе (в stopSpooler.ps1)
Start-Sleep -Seconds 5.0
Get-Service > newAllServices.txt

## 3.2.3 : создаем новый исполняемый файл для сравнения списка служб - compareServices.ps1
New-Item -Path 'C:\LAB6\compareServices.ps1' -ItemType File

## 3.2.3 : сравнение двух файлов, содержащих список служб и вывод разностной информации в deltaServices.txt (в compareServices.ps1)
Compare-Object -ReferenceObject (Get-Content -Path C:\LAB6\allServices.txt) -DifferenceObject (Get-Content -Path C:\LAB6\newAllServices.txt) > deltaServices.txt

## 3.2.3 : запуск compareServices.ps1 (в stopSpooler.ps1)
.\compareServices.ps1

## 3.2.4 : запуск диспетчера печати (в stopSpooler.ps1)
Start-Service 'Spooler'

## 3.2.inf : запуск stopSpooler.ps1
.\stopSpooler.ps1
