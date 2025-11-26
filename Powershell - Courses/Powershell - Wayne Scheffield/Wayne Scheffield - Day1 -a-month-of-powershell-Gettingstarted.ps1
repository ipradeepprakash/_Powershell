<#
https://blog.waynesheffield.com/wayne/archive/2013/02/a-month-of-powershell-day-1-getting-started/

 PowerShell is Microsoft’s “new” command prompt/scripting environment.
- .NET object-based scripting environment.
- Everything in PowerShell is an object, even the output.
- Using objects provides several benefits: Objects have a 
    > defined type,
    > can have properties (settings, which might be other objects) and 
    > methods (a function that performs a task on the object type).

    PowerShell Commands (a.k.a Cmdlets)
    ---------------------
    Cmdlets have a unique naming convention: Verb-Noun. 
     For instance, some of the available cmdlets are Get-Process, Get-Help, Get-ChildItem.

- Cmdlet	Description
---------------------------
Get-Help	Displays help about Windows PowerShell cmdlets and concepts.
Get-Command	Gets all commands that are installed on the computer.
Get-Member	Gets the properties and methods of objects.



#>



## save & Install the SqlServer module to a path (You can choose a folder of your preference)
Save-Module -Name SqlServer -Path $env:TEMP

# Overwrite a previous version of the SqlServer module, -force will install newer version with older cersion side-by-side.
Install-Module -Name SqlServer -force

#  list if more than one version is installed:
Get-Module SqlServer -ListAvailable

# to use specific version
Import-Module SqlServer -Version <mention version name 123>

# To remove older version  
Uninstall-module -Name SQLServer -RequiredVersion "<version number>"

# Discover prerelease versions of the SqlServer module
Find-Module SqlServer -AllowPrerelease

# Install a specific prerelease version of the SqlServer module
# example: Install-Module SqlServer -RequiredVersion 21.1.18218-preview -AllowPrerelease
Install-Module SqlServer -RequiredVersion <version number 123>-preview -AllowPrerelease

<# 
    ------------- PROFILE ------------------------
You can customize your PowerShell environment by establishing a profile. 
There are actually multiple profile files, one each for:

Description	                Path
---------------------------------------------------------------------------------
Current User, Current Host	$Home[My ]DocumentsWindowsPowerShellProfile.ps1
Current User, All Hosts	    $Home[My ]DocumentsProfile.ps1
All Users, Current Host	    $PsHomeMicrosoft.PowerShell_profile.ps1
All Users, All Hosts	    $PsHomeProfile.ps1

$PROFILE

#>









