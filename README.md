# System-Information-Script
Powershell Script that emails different applications/software installed on the system

This script (UPPS_tool_2) was automated for an internship where the company was manually completing commands in powershell that recorded system information 
such as:

-Naming the file of the systems name(HOSTNAME), with the date the script ran

-Dumping applications installed, processes running on the machine, Windows updates, active connections, and ip information into a file called $Env:Computername"_"$(get-date -f yyyy-MM-dd)"_SystemInfo".txt in this dir C:\scans\

-Then emails the file from the scans folder to the recipient without having the sender manually logging in through powershell, instead the sender's hashed creds are stored in a file where the tool/script is located. 

-This script (UPPS_tool_1) is used to create the hashed creds file for password for the sender
