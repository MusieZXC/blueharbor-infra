$pwd = Read-Host -AsSecureString "Initial password" 

Import-Csv C:\Lab\users.csv | ForEach-Object { 
  New-ADUser -Name "$($_.FirstName) $($_.LastName)" -GivenName $_.FirstName -Surname $_.LastName ` 
    -SamAccountName $_.Sam -UserPrincipalName "$($_.Sam)@blueharbor.internal" `
    -Department $_.Department -Title $_.Title `
    -Path "OU=$($_.Department),OU=Users,OU=BlueHarbor,DC=blueharbor,DC=internal" `
    -AccountPassword $pwd -ChangePasswordAtLogon $true -Enabled $true
}
