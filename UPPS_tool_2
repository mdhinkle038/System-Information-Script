##User Inputs in PowerShell Admin
##Set-ExecutionPolicy -ExecutionPolicy Bypass -Force
##C:\tools\UPPS_tool_2
##User will decide whether they want to email the program or not
##if user does they have to enter email credentials of the From Email
##if not the program will end dumping the data to C:\scans

<# Set and encrypt credentials to file using default method #>
#$credential = Get-Credential
#$credential.Password | ConvertFrom-SecureString | Set-Content C:\Users\user_name\Documents\Tools\ToolCred.txt

#Sender EMAIL
$emailusername = "user_email@gmail.com"
$encrypted = Get-Content c:\Users\user_name\Documents\Tools\ToolCred.txt | ConvertTo-SecureString
$credential = New-Object System.Management.Automation.PsCredential($emailusername, $encrypted)

####Telling the user the program is running
Write-Host " "
Write-Host "RUNNING: this should take a moment."
Write-Host " "


#### Figuring out whether or not scans dir exists
while (-NOT (Test-Path C:\scans\)) { 
	mkdir C:\scans\ 
}

####SubTitles
$filler0 = '						


	'
$filler1 = '						
HOSTNAME:

	'
$filler2 = '						
INSTALLED PROGRAMS 1:

	'
$filler3 = '						
INSTALLED PROGRAMS 2:

	'
$filler4 = '						
INSTALLED PROGRAMS 3:

	'
$filler5 = '						
PROCESSES:

	'
$filler6 = '						
WINDOWS UPDATES:

	'

$filler7 = '						
ACTIVE CONNECTIONS:

	'
	
$filler8 = '						
IP INFORMATION: 

	'

#### Gathering Data
$filler1  > C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$Env:Computername >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$filler2  >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
Get-AppxPackage -AllUsers | fl | Format-Table -AutoSize >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$filler3 >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Format-List -Property DisplayName, InstallDate, InstallLocation, DisplayVersion, Version, VersionMajor, VersionMinor, HelpLink, Publisher, Size, EstimatedSize, NoRepair, NoModify, default, Comments >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$filler4 >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Format-List -Property DisplayName, InstallDate, InstallLocation, DisplayVersion, Version, VersionMajor, VersionMinor, HelpLink, Publisher, Size, EstimatedSize, NoRepair, NoModify, default, Comments >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$filler5 >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
Get-Process | Format-Table -AutoSize >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$filler6 >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
get-wmiobject -class win32_quickfixengineering | Format-List -Property Source, Description, HotFixID, InstalledBy, InstalledOn >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$filler7 >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
netstat -a -o -n >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
$filler8 >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt
ipconfig /all >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt 
$filler0 >> C:\scans\$Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt

####Asking User to email data or not
$EmailConfirm = ''
Do {
$Email = Read-Host -Prompt 'Do you wish to email the data? If yes enter (y); If no enter (n); [!CASE SENSITIVE!]'
Write-Host " "
$EmailConfirm = Read-Host -Prompt 'Are you sure? yes (y); no (n); [!CASE SENSITIVE!]'
Write-Host " "
} While ($EmailConfirm -eq 'n')

####IF YES
If ($Email -eq 'y') {
Write-Host " "
Write-Host "You Entered (YES)"
Write-Host " "

#Email Code
#$smtpCred = (Get-Credential) 
#Smtp server the email of the sender
$ToAddress = 'user_email@gmail.com'
$FromAddress = 'user_email@gmail.com'
$SmtpServer = 'smtp.office365.com'
$Attachments1 = 'C:\scans\*'
$SmtpSubject = 'Automated Scan Results'
$SmtpBody = 'Emails every week'
####################################################
Send-MailMessage `
-To $ToAddress `
-From $FromAddress `
-Subject $SmtpSubject `
-Body $SmtpBody `
-SmtpServer $SmtpServer `
-Port 587 `
-UseSsl `
-Attachments $Attachments1 `
-Credential $credential
#-Credential $smtpCred
}


####IF NO
Else {
Write-Host " "
Write-Host "You Entered (NO)"
Write-Host " "
}

####Output of Completion 
If ($Email -eq 'y') {
Write-Host " "
Write-Host "COMPLETE: check out the C: Drive, the program information is located in the scans folder."
Write-Host "		^ check out the recieving email, the program information has been sent."
Write-Host " "
}

Else {
Write-Host " "
Write-Host "COMPLETE: check out the C: Drive, the program information is located in the scans folder."
Write-Host " "
}

Set-ExecutionPolicy -ExecutionPolicy Default -Force
