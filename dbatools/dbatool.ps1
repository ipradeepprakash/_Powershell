# 0. Check your PowerShell version (v3+ required for Windows, Core 7.4+ for Linux/macOS)
$PSVersionTable.PSVersion

# 1. Install dbatools (takes about 30 seconds)
Install-Module dbatools -Scope CurrentUser
    # 1.1 check dbatools version
    Get-Module dbatools -ListAvailable | Select-Object Name, Version

# 2. See all databases on your local SQL Server
# Replace 'sql01' with your SQL Server name if needed
Get-DbaDatabase -SqlInstance MDWA\MSSQLSERVER01,MDWA\TEST,MDWA | ft

<#

         got error 
         WARNING: [20:37:31][Get-DbaDatabase] Failure | The certificate chain was issued by an authority that is not trusted
        # -- Fix is execute below command (https://vladdba.com/2023/07/29/fix-certificate-authority-that-is-not-trusted-when-using-dbatools/)
            Set-DbatoolsConfig -FullName sql.connection.trustcert -Value $true -Register

#>

# finding SQL instances

        # get help command in finding SQL instances
        get-help Find-DbaInstance -examples

        # get help in finding SQL instances with domain details
        Find-DbaInstance -DiscoveryType Domain, DataSourceEnumeration

        # get help in finding SQL instances with domain details
        Find-DbaInstance -DiscoveryType All
        Find-DbaInstance -DiscoveryType All -ScanType All

        # Using Active Directory
        Get-ADComputer -Filter { name -like 'sql*' } | Find-DbaInstance | Out-GridView


# checking SQL server Database details 
      
        # Syntax: 
        # Get-DbaDatabase -SqlInstance <SQL instance1>,<SQL instance2>,<SQL instance3> | ft -AutoSize
        cls
        Get-DbaDatabase -SqlInstance MDWA\MSSQLSERVER01,MDWA\TEST,MDWA |Select-Object computername,sqlinstance,name,recoverymodel,status,isaccessible,lastfullbackup,lastdifffbackup,lastlogbackup| ft -AutoSize


# 4. Run any T-SQL query you want
        # Syntax
        # Invoke-DbaQuery -SqlInstance sql01, sql02, sql03 -Query "SELECT @@VERSION"
        # 4. Run any T-SQL query you want
        Invoke-DbaQuery -SqlInstance MDWA\MSSQLSERVER01,MDWA\TEST,MDWA -Query "SELECT @@VERSION" | ft -AutoSize









