#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | sort-object Cpu -descending

#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object id -Descending

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object ws -Descending | Select-Object -First 5

#Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
Start-Process msedge.exe -ArgumentList https://owasp.org/www-project-top-ten/

#Start the process Notepad ten times using a for loop.
for ($i=1; $i -le 10; $i++) {
Start-Process notepad.exe 
} 
#Close all instances of the Notepad.
Stop-Process -name "notepad"

#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Get-Process msedge 
$processidtokill= Read-Host "enter process id to kill" 
Stop-process -Id $processidtokill
echo "process killed"
