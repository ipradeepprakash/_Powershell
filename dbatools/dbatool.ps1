# 0. Check your PowerShell version (v3+ required for Windows, Core 7.4+ for Linux/macOS)
$PSVersionTable.PSVersion

# 1. Install dbatools (takes about 30 seconds)
Install-Module dbatools -Scope CurrentUser

# 2. See all databases on your local SQL Server
# Replace 'sql01' with your SQL Server name if needed
Get-DbaDatabase -SqlInstance sql01


# get help command in finding SQL instances
get-help Find-DbaInstance -examples

# get help in finding SQL instances with domain details
Find-DbaInstance -DiscoveryType Domain, DataSourceEnumeration

# get help in finding SQL instances with domain details
Find-DbaInstance -DiscoveryType All
Find-DbaInstance -DiscoveryType All -ScanType All

# Using Active Directory
Get-ADComputer -Filter { name -like 'sql*' } | Find-DbaInstance | Out-GridView













