param(
    [string]$FolderPath
)

function Block-OutboundTraffic {
    param(
        [string]$Path
    )

    # Iterate over all .exe files in the specified folder and its subfolders
    Get-ChildItem -Path $Path -Recurse -Include *.exe | ForEach-Object {
        $folderName = (Split-Path $FolderPath -Leaf)
        $ruleName = "0" + $folderName + "-" + $_.Name + "-Outbound"

        # Check if the outbound rule already exists
        $ruleExistsOut = (Get-NetFirewallRule -DisplayName $ruleName -Direction Outbound -ErrorAction SilentlyContinue) -ne $null

        # If the rule does not exist, create a new outbound rule
        if (-not $ruleExistsOut) {
            New-NetFirewallRule -DisplayName $ruleName -Direction Outbound -Action Block -Program $_.FullName -Enabled True
        }
    }
}

Block-OutboundTraffic -Path $FolderPath
