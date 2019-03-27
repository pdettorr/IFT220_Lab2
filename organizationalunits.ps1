# brutforce script to make some organizational units

# you need to change "DC=ad,DC=pdettorr,DC=lan" to match your domain and update the PD initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name PD_Computers -Path "DC=AD,DC=pdettorr,DC=lan" -Description "PD Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
 New-ADOrganizationalUnit -Name Servers -Path "OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=PD_Computers,DC=AD,DC=pdettorr,DC=lan"
New-ADOrganizationalUnit -Name PD_Groups -Path "DC=AD,DC=pdettorr,DC=lan" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name PD_Privileged_Accounts -Path "DC=AD,DC=pdettorr,DC=lan" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name PD_Users -Path "DC=AD,DC=pdettorr,DC=lan" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=PD_Groups,DC=AD,DC=pdettorr,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=PD_Groups,DC=AD,DC=pdettorr,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=PD_Groups,DC=AD,DC=pdettorr,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=PD_Groups,DC=AD,DC=pdettorr,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=PD_Groups,DC=AD,DC=pdettorr,DC=lan"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=PD_Groups,DC=AD,DC=pdettorr,DC=lan"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=PD_Groups,DC=AD,DC=pdettorr,DC=lan"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
