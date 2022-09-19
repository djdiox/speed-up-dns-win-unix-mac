
echo off
Title Get Net Adapter Index,InterfaceDescription,Name
@for /f "tokens=1,2,3 skip=1 delims=," %%a in (
    'Powershell -C "Get-NetAdapter -Physical | Where-Object  { $_.Status -eq 'Up' } | Select-Object -Property ifIndex,InterfaceDescription,Name  | ConvertTo-Csv  -NoTypeInformation"'
) Do (
    Set "Index=%%~a"
    Set "Interface=%%~b"
    Set "InterfaceName=%%~c"
)
echo( Index = %Index%
echo( Interface = %internetInterface%
echo on
echo "Setting 1.1.1.1 and 8.8.8.8 on Interface: %InterfaceName%, description: %Interface%"

netsh interface ipv4 set dns "%InterfaceName%" dhcp
netsh interface ipv4 set dns name="%InterfaceName%" static 1.1.1.1 primary
netsh interface ipv4 add dns name="%InterfaceName%" 8.8.8.8 index=2
ipconfig /flushdns
echo "done"
