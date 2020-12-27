## проверка запуска копирования
Get-ScheduledTask

## принудительная остановка текущего процесса копирования
Stop-ScheduledTask -TaskName "TaskCopy"

## удаление процесса копирования из запланированных задач
Unregister-ScheduledTask -TaskName "TaskCopy"