
# Microsoft Entra ID - Group Membership Audit
# Purpose: Review departmental security group membership
# Prerequisite: Connect-MgGraph with approved read scopes

$departments = @("IT", "HR", "Finance")

foreach ($department in $departments) {

    $group = Get-MgGroup -Filter "displayName eq '$department'"

    $members = Get-MgGroupMemberAsUser -GroupId $group.Id -All

    Write-Host "`nDepartment: $department" -ForegroundColor Cyan

    foreach ($member in $members) {
        Write-Host "Employee: $($member.DisplayName)"
    }
}
