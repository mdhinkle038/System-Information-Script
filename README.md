# System-Information-Script
Powershell Script that emails different applications/software installed on the system

This script was automated for an internship where the company was manually completing commands in powershell that recorded system information 
such as:

-Naming the file of the systems name(HOSTNAME), with the date the script ran

-Dumping applications installed, processes running on the machine, Windows updates, active connections, and ip information into a file called $Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt in this dir C:\scans\

-Then emails the file from the scans folder to the recipient without having the recipient manually logging in through powershell, instead the recipient's hashed creds are stored in a file where the tool/script is located. 
