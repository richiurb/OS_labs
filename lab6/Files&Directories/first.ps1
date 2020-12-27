## создание папки LAB6 на диске C:
New-Item -Path 'C:\LAB6' -ItemType Directory 

## переходим в папку LAB6
Set-Location -Path C:\LAB6 \PathThru

## получение версии ОС (способ 1)
(Get-ComputerInfo).OsVersion    # долгий вариант, так как (Get-ComputerInfo) получает сначала всю информацию, а потом берёт поле OsVersion

## получение версии ОС (способ 2)
[System.Environment]::OSVersion.Version

## запись версии ОС в текстовый файл OsVersion.txt
[System.Envitonment]::OSVersion.Version > OSVersion.txt

## запись информации о используемой и занятой памяти в ОС в текстовый файл Memory.txt
Get-ComputerInfo -Property *mem* > Memory.txt

## запись информации о жёстких дисках в DiskInfo.txt
Get-Disk > DiskInfo.txt
