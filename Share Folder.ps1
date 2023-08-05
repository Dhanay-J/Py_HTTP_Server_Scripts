Add-Type -AssemblyName System.Windows.Forms
$browser = New-Object System.Windows.Forms.FolderBrowserDialog
$browser.Description = "Select the folder to be shared"
$null = $browser.ShowDialog((New-Object System.Windows.Forms.Form -Property @{TopMost = $true }))
$path = $browser.SelectedPath
cd $path
py -m http.server -b 192.168.1.191 80