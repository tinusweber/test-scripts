# Save as: exec_test.ps1

$now = Get-Date -Format "yyyy-MM-dd_HHmmss"
$out = Join-Path $env:TEMP "ps1_exec_test_$now.txt"

"PowerShell executed at $(Get-Date -Format o)" | Out-File -FilePath $out -Encoding UTF8

# Write to console so you can screenshot terminal output
Write-Host "PowerShell executed. Evidence: $out"

# Optionally show a Windows toast/message (commented out — may require additional UI context)
# Add-Type -AssemblyName PresentationFramework
# [System.Windows.MessageBox]::Show("PowerShell executed. Evidence: $out","exec_test.ps1")
