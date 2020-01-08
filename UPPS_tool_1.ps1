<# Set and encrypt credentials to file using default method #>

$credential = Get-Credential
$credential.Password | ConvertFrom-SecureString | Set-Content C:\Users\user_name\Documents\Tools\ToolCred.txt