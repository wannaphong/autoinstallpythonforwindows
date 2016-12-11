Write-Host -Object 'Auto-install Python for Windows';
$py = Read-Host 'Python install ? (3 or 2)'
$Arch = (Get-Process -Id $PID).StartInfo.EnvironmentVariables["PROCESSOR_ARCHITECTURE"];
switch ($py) 
    {
	3 {
		Write-Host -Object 'Python 3';
		if ($Arch -eq 'x86') {
			Write-Host -Object 'Running 32-bit PowerShell';
			$url1 = "https://github.com/wannaphongcom/autoinstallpythonforwindows/raw/master/data/py3-32.txt"
			$output1 = "$PSScriptRoot\link-py3.txt"
			Invoke-WebRequest -Uri $url1 -OutFile $output1
			$url = Get-Content -Path $PSScriptRoot\link-py3.txt
			$output = "$PSScriptRoot\python3-32bit.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\python3-32bit.exe")
		}
		elseif ($Arch -eq 'amd64') {
			Write-Host -Object 'Running 64-bit PowerShell';
			$url1 = "https://github.com/wannaphongcom/autoinstallpythonforwindows/raw/master/data/py3-64.txt"
			$output1 = "$PSScriptRoot\link-py3.txt"
			Invoke-WebRequest -Uri $url1 -OutFile $output1

			$url = Get-Content -Path $PSScriptRoot\link-py3.txt
			$output = "$PSScriptRoot\python3-64bit.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\python3-64bit.exe")
		}
	}
	2 {
		Write-Host -Object 'Python 2';
		if ($Arch -eq 'x86') {
			Write-Host -Object 'Running 32-bit PowerShell';

			$url1 = "https://github.com/wannaphongcom/autoinstallpythonforwindows/raw/master/data/py27-32.txt"
			$output1 = "$PSScriptRoot\link-py2.txt"
			Invoke-WebRequest -Uri $url1 -OutFile $output1
			$url = Get-Content -Path $PSScriptRoot\link-py2.txt
			$output = "$PSScriptRoot\python2-32bit.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\python2-32bit.exe")

		}
		elseif ($Arch -eq 'amd64') {
			Write-Host -Object 'Running 64-bit PowerShell';

			$url1 = "https://github.com/wannaphongcom/autoinstallpythonforwindows/raw/master/data/py27-64.txt"
			$output1 = "$PSScriptRoot\link-py2.txt"
			Invoke-WebRequest -Uri $url1 -OutFile $output1
			$url = Get-Content -Path $PSScriptRoot\link-py2.txt
			$output = "$PSScriptRoot\python2-64bit.exe"
			$start_time = Get-Date
			Invoke-WebRequest -Uri $url -OutFile $output
			Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
			[System.Diagnostics.Process]::Start("$PSScriptRoot\python2-64bit.exe")

		}
	}
}
