# Microsoft Entra ID IAM Home Lab

## Project Overview
Built a cloud-based identity and access management
lab using Microsoft Entra ID and Microsoft Graph
PowerShell to simulate enterprise user administration.

## Technologies Used
- Microsoft Entra ID
- Microsoft Graph API
- PowerShell 7
- Microsoft Entra Security Groups

## User Provisioning
Created three fictional employees and configured
department attributes, job titles, and employee IDs.

## Security Group Management
Created IT, HR, and Finance security groups and
assigned users according to their departments.


## PowerShell Group Membership Audit

Developed and executed a PowerShell script using Microsoft Graph
to retrieve departmental security group memberships.

The script queries the IT, HR, and Finance groups and displays
their assigned users.

### Skills Demonstrated
- Microsoft Graph PowerShell
- Security Group Management
- Identity and Access Management
- Access Auditing
- PowerShell Scripting

[View Group Membership Audit Script](Scripts/Group-Membership-Audit.ps1)


## Troubleshooting: Microsoft Graph 403 Forbidden

### Issue
While querying Microsoft Entra ID users through PowerShell,
I encountered a 403 Forbidden error.

### Investigation
- Inspected the Microsoft Graph authentication context.
- Reviewed the requested API permission scopes.
- Verified the tenant connection.
- Tested authentication using the Microsoft Graph `/me` endpoint.

### Resolution
Reconnected to the intended Microsoft Entra tenant with
the appropriate delegated Microsoft Graph permissions.

### Validation
Successfully retrieved directory users and security groups,
then executed a PowerShell audit to verify departmental
group memberships.

