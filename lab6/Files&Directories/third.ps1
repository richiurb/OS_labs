## Создание файла с содержимым всех файлов каталога TEST
Get-Content -Path 'C:\TEST\*' -Exclude 'Result.txt' -Force > Result.txt # -Exclude 'Result.txt' - исключение результирующего файла в избежание зацикливания процесса
