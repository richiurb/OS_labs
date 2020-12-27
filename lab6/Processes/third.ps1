## запуск copy.ps1 каждую минуту в течение часа
$duration = New-TimeSpan -Hours 1
$interval = New-TimeSpan -Minutes 1
$tt = New-ScheduledTaskTrigger -RandomDelay 0 -At 3:22pm -Once -RepetitionDuration $duration -RepetitionInterval $interval
$ta = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "C:\LAB6\share\copy.ps1"
Register-ScheduledTask TaskCopy -Action $ta -Trigger $tt