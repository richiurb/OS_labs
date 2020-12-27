## узнаем имя хоста (способ 1)
$env:computername

## узнаем имя хоста (способ 2)
[System.Net.Dns]::GetHostName()

## узнаем имя хоста (способ 3)
[System.Net.Dns]::GetHostByName('').HostName

## узнаем IP хоста
[System.Net.Dns]::GetHostByName('').AddressList.IPAddressToString

## создаём сетевой ресурс
net share temp=C:\LAB6\share /GRANT:m0n0d,FULL

