cls
        $h = hostname
        Write-Host "Server Name - $h"

        Get-Volume | ForEach-Object {
        $DriveL = $_.DriveLetter
        $sizeAlloc = [math]::round(($_.size / 1GB),2)
        $sizeRem = [math]::round(($_.SizeRemaining / 1GB),2)

        Write-Host "Drive - $DriveL | Available Size - $sizeAlloc | FreeSpace - $sizeRem "

        }

