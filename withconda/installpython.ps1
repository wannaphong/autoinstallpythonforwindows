Write-Host -Object 'Auto-install Python for Windows';
$py = Read-Host 'Python install ? (3 or 2)'
$Arch = (Get-Process -Id $PID).StartInfo.EnvironmentVariables["PROCESSOR_ARCHITECTURE"];
switch ($py) 
    {
	3 {
		Write-Host -Object 'Python 3';
		if ($Arch -eq 'x86') {
			Write-Host -Object 'Running 32-bit PowerShell';
			$url = "https://repo.continuum.io/miniconda/Miniconda3-latest-Windows-x86.exe"
			$output = "$PSScriptRoot\Miniconda3-latest-Windows-x86.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\Miniconda3-latest-Windows-x86.exe")

		}
		elseif ($Arch -eq 'amd64') {
			Write-Host -Object 'Running 64-bit PowerShell';
			$url = "https://repo.continuum.io/miniconda/Miniconda3-latest-Windows-x86_64.exe"
			$output = "$PSScriptRoot\Miniconda3-latest-Windows-x86_64.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\Miniconda3-latest-Windows-x86_64.exe")

			}
	}
	2 {
		Write-Host -Object 'Python 2';
		if ($Arch -eq 'x86') {
			Write-Host -Object 'Running 32-bit PowerShell';
			$url = "https://repo.continuum.io/miniconda/Miniconda2-latest-Windows-x86.exe"
			$output = "$PSScriptRoot\Miniconda2-latest-Windows-x86.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\Miniconda2-latest-Windows-x86.exe")

		}
		elseif ($Arch -eq 'amd64') {
			Write-Host -Object 'Running 64-bit PowerShell';
			$url = "https://repo.continuum.io/miniconda/Miniconda2-latest-Windows-x86_64.exe"
			$output = "$PSScriptRoot\Miniconda2-latest-Windows-x86_64.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\Miniconda2-latest-Windows-x86_64.exe")

		}
		Write-Host "Press any key to continue ..."
		$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
		Write-Host
		Write-Host "A"
		Write-Host "B"
		Write-Host "C"
		$url = "https://download.microsoft.com/download/7/9/6/796EF2E4-801B-4FC4-AB28-B59FBF6D907B/VCForPython27.msi"
		$output = "$PSScriptRoot\VCForPython27.msi"
		$start_time = Get-Date
		Invoke-WebRequest -Uri $url -OutFile $output
		Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
		[System.Diagnostics.Process]::Start("$PSScriptRoot\VCForPython27.msi")
	}
}
