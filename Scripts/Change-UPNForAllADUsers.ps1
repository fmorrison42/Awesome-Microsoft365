# Change UPN for all AD Users

## start by getting a list of all the AD Users in the organization.

Get-ADUser -Filter * | Sort-Object Name | Format-Table Name, UserPrincipalName

# Name          UserPrincipalName
# ----          -----------------
# Administrator administrator@clanda.local
# Tony Stark    TonyStark@clanda.local
# Bruce Banner  IncredibleHulk@clanda.local

# -----------------------------------

## Change the UPN for all the AD users in the organization. Run the commands one by one.

$LocalUsers = Get-ADUser -Filter {UserPrincipalName -like '*clanda.local'} -Properties UserPrincipalName -ResultSetSize $null
$LocalUsers | foreach {$newUpn = $_.UserPrincipalName.Replace("clanda.local","clanda.com"); $_ | Set-ADUser -UserPrincipalName $newUpn}

######################################

# Confirm that the UPN is changed by running the Get-ADUser cmdlet.

Get-ADUser -Filter * | Sort-Object Name | Format-Table Name, UserPrincipalName

# Name          UserPrincipalName
# ----          -----------------
# Administrator administrator@clanda.com
# Tony Stark    TonyStark@clanda.com
# Bruce Banner  IncredibleHulk@clanda.com

# The UPN is successfully changed for all the users in the organization. Suppose you like to change the UPN back to exoip.local, change the UPN in previous commands.
# You may have a long list of users, and you want to verify if there are no .local addresses in the AD. Get a list of all users with .local UPN suffix. The output should be empty.


Get-ADUser -Filter {UserPrincipalName -like '*local'} | Sort-Object Name | Format-Table Name, UserPrincipalName




