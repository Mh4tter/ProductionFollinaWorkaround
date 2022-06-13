# ProductionFollinaWorkaround
Work around for Follina vulnerability + documentation on my process


CVE-2022-30190 "Follina" is a Windows exploit that allows an adversary to preform remote code execution via the built in Microsoft Diagnostic Tool (msdt). As of now, there is no official patch, but there are workarounds. The option I ended up employing was the Microsoft recommended workaround, deleting the reg entry for ms-msdt. After confirming that their fix ACTUALLY worked, I went to work getting a script together to push out across the company. Well it just so happens that Kevin Tegelaar had already written a script to do just that. After verifying that it was a good script, I used PDQ deploy to build a package for it and deployed it across the network. I also setup a job to run every few hours to clean up any devices that are not currently connected to the network. 
