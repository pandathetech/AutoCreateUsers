# Author : Bryan Yu

# Import the Active Directory module
Import-Module ActiveDirectory

# Import the CSV file containing the user data
$CSVFile = "C:\Users\Administrator\Documents\employee_list.csv"
$CSVData = Import-CSV -Path $CSVFile -Delimiter "," -Encoding Default

# Loop through each user in the CSV file
foreach($User in $CSVData){

    # Initialize user identity variables
    $UserFirstName = $User.FirstName
    $UserLastName = $User.Name
    $UserFullName = $User.FullName
    $UserPhone = $User.phone
    $UserEmail = $User.email
    $UserRegion = $User.region
    $UserCountry = $User.country
    $UserPostalCode = $User.postalZip
    $UserDepartment = $User.departments
    $UserJobTitle = $User.title
    $UserLogin = ($UserFirstName).substring(0,1).ToLower() + "." + $UserLastName.ToLower()
    $UserPassword = "W4t3rm3l0n85!"

    # Check if the user already exists in Active Directory
    if (Get-ADUser -Filter {SamAccountName -eq $UserLogin})
    {
        Write-Warning "The username $UserLogin already exists in AD"
    }
    else
    {
        # Call Center department
        if ($UserDepartment -eq "Call_center"){
            New-ADUser -Name "$UserFirstName $UserLastName" `
                       -DisplayName "$UserFirstName $UserLastName" `
                       -GivenName $UserFirstName `
                       -Surname $UserLastName `
                       -SamAccountName $UserLogin `
                       -UserPrincipalName "$UserLogin@bamboo.com" `
                       -EmailAddress $UserEmail `
                       -Title $UserJobTitle `
                       -OfficePhone $UserPhone `
                       -PostalCode $UserPostalCode `
                       -State $UserRegion `
                       -Path "OU=Call_center,DC=bamboo,DC=com" `
                       -AccountPassword(ConvertTo-SecureString $UserPassword -AsPlainText -Force) `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true

            Write-Output "User created: $UserLogin ($UserFirstName $UserLastName $UserDepartment)"
        }
        
        # Finance department
        elseif ($UserDepartment -eq "Finances"){
            New-ADUser -Name "$UserFirstName $UserLastName" `
                       -DisplayName "$UserFirstName $UserLastName" `
                       -GivenName $UserFirstName `
                       -Surname $UserLastName `
                       -SamAccountName $UserLogin `
                       -UserPrincipalName "$UserLogin@bamboo.com" `
                       -EmailAddress $UserEmail `
                       -Title $UserJobTitle `
                       -OfficePhone $UserPhone `
                       -PostalCode $UserPostalCode `
                       -State $UserRegion `
                       -Path "OU=Finances,DC=bamboo,DC=com" `
                       -AccountPassword(ConvertTo-SecureString $UserPassword -AsPlainText -Force) `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true

            Write-Output "User created: $UserLogin ($UserFirstName $UserLastName $UserDepartment)"
        }
        
        # Human Resources department
        elseif ($UserDepartment -eq "HR"){
            New-ADUser -Name "$UserFirstName $UserLastName" `
                       -DisplayName "$UserFirstName $UserLastName" `
                       -GivenName $UserFirstName `
                       -Surname $UserLastName `
                       -SamAccountName $UserLogin `
                       -UserPrincipalName "$UserLogin@bamboo.com" `
                       -EmailAddress $UserEmail `
                       -Title $UserJobTitle `
                       -OfficePhone $UserPhone `
                       -PostalCode $UserPostalCode `
                       -State $UserRegion `
                       -Path "OU=HR,DC=bamboo,DC=com" `
                       -AccountPassword(ConvertTo-SecureString $UserPassword -AsPlainText -Force) `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true

            Write-Output "User created: $UserLogin ($UserFirstName $UserLastName $UserDepartment)"
        }

        # IT department
        elseif ($UserDepartment -eq "IT"){
            New-ADUser -Name "$UserFirstName $UserLastName" `
                       -DisplayName "$UserFirstName $UserLastName" `
                       -GivenName $UserFirstName `
                       -Surname $UserLastName `
                       -SamAccountName $UserLogin `
                       -UserPrincipalName "$UserLogin@bamboo.com" `
                       -EmailAddress $UserEmail `
                       -Title $UserJobTitle `
                       -OfficePhone $UserPhone `
                       -PostalCode $UserPostalCode `
                       -State $UserRegion `
                       -Path "OU=IT,DC=bamboo,DC=com" `
                       -AccountPassword(ConvertTo-SecureString $UserPassword -AsPlainText -Force) `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true

            Write-Output "User created: $UserLogin ($UserFirstName $UserLastName $UserDepartment)"
        }

        # Logistics department
        elseif ($UserDepartment -eq "Logistics"){
            New-ADUser -Name "$UserFirstName $UserLastName" `
                       -DisplayName "$UserFirstName $UserLastName" `
                       -GivenName $UserFirstName `
                       -Surname $UserLastName `
                       -SamAccountName $UserLogin `
                       -UserPrincipalName "$UserLogin@bamboo.com" `
                       -EmailAddress $UserEmail `
                       -Title $UserJobTitle `
                       -OfficePhone $UserPhone `
                       -PostalCode $UserPostalCode `
                       -State $UserRegion `
                       -Path "OU=Logistics,DC=bamboo,DC=com" `
                       -AccountPassword(ConvertTo-SecureString $UserPassword -AsPlainText -Force) `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true

            Write-Output "User created: $UserLogin ($UserFirstName $UserLastName $UserDepartment)"
        }

        # Marketing department
        elseif ($UserDepartment -eq "Marketing"){
            New-ADUser -Name "$UserFirstName $UserLastName" `
                       -DisplayName "$UserFirstName $UserLastName" `
                       -GivenName $UserFirstName `
                       -Surname $UserLastName `
                       -SamAccountName $UserLogin `
                       -UserPrincipalName "$UserLogin@bamboo.com" `
                       -EmailAddress $UserEmail `
                       -Title $UserJobTitle `
                       -OfficePhone $UserPhone `
                       -PostalCode $UserPostalCode `
                       -State $UserRegion `
                       -Path "OU=Marketing,DC=bamboo,DC=com" `
                       -AccountPassword(ConvertTo-SecureString $UserPassword -AsPlainText -Force) `
                       -ChangePasswordAtLogon $true `
                       -Enabled $true

            Write-Output "User created: $UserLogin ($UserFirstName $UserLastName $UserDepartment)"
        }
    }
}
