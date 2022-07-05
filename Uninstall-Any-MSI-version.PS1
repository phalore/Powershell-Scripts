################################################################
## Change Where-Object name to software you want to uninstall ##
## Special thanks to script creator Mitchell.R                 ##
################################################################

$software = Get-CimInstance -Class Win32_Product | Where-Object name -like "*iTune*"
msiexec /X $software.IdentifyingNumber /QN
