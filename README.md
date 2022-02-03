# SQLcli

Powershell quick MSSQL client. Will not run stacked queries but can be useful to get quick enumeration done without having full-blown tools like PowerUPSQL etc...

### Example

`Run-SQL -instance SQL05 -query "select * from master..sysservers"`
