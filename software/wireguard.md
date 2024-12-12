# WireGuard

### Issues
Wireguard (Client) not working with Windows IP forwarding turned on  
Warning: the has Forwarding/WeakHostSend enabled, which will cause routing loops  
https://serverfault.com/questions/929081/how-can-i-enable-packet-forwarding-on-windows
```shell
Get-NetIPInterface | select ifIndex,InterfaceAlias,AddressFamily,ConnectionState,Forwarding | Sort-Object -Property IfIndex | Format-Table
```
```shell
Set-NetIPInterface -ifindex <required interface index from table> -Forwarding Disabled
```

Disable forwarding on all interdaces
```shell
Set-NetIPInterface -Forwarding Disabled
```
