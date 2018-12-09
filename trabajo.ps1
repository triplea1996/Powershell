#Encuentra los cinco procesos que usan más memoria.
ps | sort –p ws | select –last 5
#Obtener información sobre la fabricación y modelo de un ordenador
Get-WmiObject -Class Win32_ComputerSystem
#Obtener serial
(Get-WmiObject win32_bios).SerialNumber



