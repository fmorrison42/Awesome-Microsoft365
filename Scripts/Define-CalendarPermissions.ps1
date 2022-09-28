Start-Transcript -Path C:\temp\Set-DefCalPermissions.log -Append
# Set scope to entire forest. Cmdlet only available for Exchange on-premises.
#Set-ADServerSettings -ViewEntireForest $true
# Get all user mailboxes
$Users = Get-Mailbox -ResultSize Unlimited -RecipientTypeDetails UserMailbox
# Users exception
$Exception = @("adam.shepherd", "example.user")
# Permissions
$Permission = "LimitedDetails"
# Calendar name languages
$FolderCalendars = @("Agenda", "Calendar", "Calendrier", "Kalender")
# Loop through each user
foreach ($User in $Users) {
    Write-Host "User: "$User.name
    # Leave permissions if user is exception
    if ($Exception.Contains($User.name)) {
        Write-Host "    $User is an exception, don't touch permissions" -ForegroundColor Red
    } else {
        # Get calendar in every user mailbox
        $Calendars = (Get-MailboxFolderStatistics $User.Identity -FolderScope Calendar)
        # Loop through each user calendar
        foreach ($Calendar in $Calendars) {
            $CalendarName = $Calendar.Name
            # Check if calendar exist
            if ($FolderCalendars -Contains $CalendarName) {
                $Cal = $User.Identity.ToString() + ":\$CalendarName"
                $CurrentMailFolderPermission = Get-MailboxFolderPermission -Identity $Cal -User Default
                # Set calendar permission / Remove -WhatIf parameter after testing
                Set-MailboxFolderPermission -Identity $Cal -User Default -AccessRights $Permission -WarningAction:SilentlyContinue -WhatIf
                Write-Host "    Calendar: $CalendarName"
                # Write output
                if ($CurrentMailFolderPermission.AccessRights -eq "$Permission") {
                    Write-Host  "$User.Identity already has the permission $CurrentMailFolderPermission.AccessRights" -ForegroundColor Yellow
                } else {
                    Write-Host "$User.Identity added permissions $Permission" -ForegroundColor Green
                }
            }
        }
    }
}
Stop-Transcript
