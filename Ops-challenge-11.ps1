# Function to perform the network report tasks
function Get-NetworkReport {
    # Run ipconfig /all and save the output to network_report.txt
    ipconfig /all | Out-File -FilePath c:\users\"vm win 1"\onedrive\desktop\network_report.txt

    # Get content from network_report.txt
    $reportContent = Get-content -path c:\users\"vm win 1"\onedrive\desktop\network_report.txt
    
    # Use Select-String to search for IPv4 address in network_report.txt
    $ipv4Line = $reportContent | Select-String -Pattern "IPv4 Address" | Select-Object -Index 1   
    # Output the matched IPv4 line
    Write-Output $ipv4Line   

    # Remove network_report.txt
    Remove-Item -Path c:\users\"vm win 1"\onedrive\desktop\network_report.txt 
}

# Call the Get-NetworkReport function
Get-NetworkReport