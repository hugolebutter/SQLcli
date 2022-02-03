function Run-SQL
{
	
param ([Parameter(Mandatory=$true)] $instance, [Parameter(Mandatory=$true)] $query, [Parameter(Mandatory=$false)] $username, [Parameter(Mandatory=$false)] $password)

$s=New-Object System.data.SQLClient.SQLconnection

if(!$username){$s.ConnectionString="Server=$instance;Integrated Security=True;"}
else {$s.ConnectionString="Server=$instance;User id=$username;Password=$password;"}

$s.Open()
$cmd=$s.CreateCommand()
$cmd.CommandText=$query
$qexec=$cmd.ExecuteReader()
$qtable=new-object "System.Data.Datatable"
$qtable.Load($qexec)
$s.Close()

return ,$qtable
}
