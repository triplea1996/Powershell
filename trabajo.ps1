clear
write-host ***************************************
write-host * Scripts básico para un administrador*
Write-Host ***************************************
function get-menu{
Write-Host "1.- Saber que 5 procesos ocupan mas en memoria"
Write-Host "2.- Obtener información sobre la fabricación y modelo de un ordenador"
Write-Host "3.- Obtener el serial de tu PC"
Write-Host "4.-Salir"
}

#Inicio de programa
do{
get-menu
$opcion = Read-Host "Eligue una opcion"
switch ($opcion)
{
    1 {Write-Host "Has elegido saber que 5 procesos ocupan mas en memoria"
        ps | sort –p ws | select –last 5}
    2 {Write-Host " Has elegido obtener informacion de tu ordenador"
        Get-WmiObject -Class Win32_ComputerSystem}
    3 { Write-Host "Has elegido obtener el serial de tu PC"
        (Get-WmiObject win32_bios).SerialNumber}
    4 { exit}
    Default {Write-Host "opcion incorrecta"}
}
Read-Host " Pulse intro para continuar"
}while($true)



