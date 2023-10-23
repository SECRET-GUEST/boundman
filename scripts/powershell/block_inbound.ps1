param(
    [string]$FolderPath
)

function Block-InboundTraffic {
    param(
        [string]$Path
    )

    #Iterate over all .exe files in the specified folder and its subfolders
    Get-ChildItem -Path $Path -Recurse -Include *.exe | ForEach-Object {
        $folderName = (Split-Path $FolderPath -Leaf)
        $ruleName = "0" + $folderName + "-" + $_.Name + "-Inbound"

        #Check if the inbound rule already exists
        $ruleExistsIn = (Get-NetFirewallRule -DisplayName $ruleName -Direction Inbound -ErrorAction SilentlyContinue) -ne $null

        #If the rule does not exist, create a new inbound rule
        if (-not $ruleExistsIn) {
            New-NetFirewallRule -DisplayName $ruleName -Direction Inbound -Action Block -Program $_.FullName -Enabled True
        }
    }
}

Block-InboundTraffic -Path $FolderPath
