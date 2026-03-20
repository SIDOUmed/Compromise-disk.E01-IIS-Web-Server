# Compromise-disk.E01-IIS-Web-Server
DFIR Lab : Compromise-disk.E01-IIS-Web-Server

During this forensics Investigation, I performed a compromise assessment on a web server disk image to identify signs of malicious activity. Key steps and findings include:

-Analyzed Sysmon event logs to detect suspicious outbound DNS activity originating from w3wp.exe (IIS Worker Process).

-Identified a typosquatting domain (microsoftonlline.com) used for command-and-control communications, highlighting the importance of monitoring DNS traffic.

-Performed MFT analysis using MFTECmd and Timeline Explorer to track file modifications, revealing that error.aspx was modified during the timeframe of the suspicious DNS activity.

-Examined the file contents, discovering obfuscated JavaScript code indicative of potential web shell deployment.

-Correlated timeline and event data to confirm compromise, demonstrating practical skills in incident response, digital forensics, and web server security analysis.

-Tools Used: Sysmon, MFTECmd, Timeline Explorer, FTK Imager

Disk Image (disk.E01): https://drive.google.com/file/d/1xSMsdEbcZMMib6e79L0rLK2Y0rvVwJOC/view

ZIP Password: LmxHXhpvYs4qP.**.bM4Xm4c

<<<<<<< Updated upstream
GitHub Write-up: https://github.com/SIDOUmed/Compromise-Assessment-Lab-IIS-Web-Server
=======
This investigation was a great exercise in incident response, threat detection, and forensic timeline analysis.

>>>>>>> Stashed changes
