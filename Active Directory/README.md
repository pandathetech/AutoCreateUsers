# User Creation Script for Active Directory
This PowerShell script automates the process of creating Active Directory user accounts from a CSV file. It reads user data from a CSV and adds users to the appropriate OUs within the domain with their data.

## Prerequisites
- **Active Directory** : The script assumes that Active Directory is already installed and configured on your Windows server.
- **Administrator Privileges** : Ensure you have **Administrator** privileges on your Active Directory server.
- **Domain** : The script is designed to work with a domain named `bamboo.com`. You may need to adjust the domain settings if you're using a different domain.
- **Organizational Units (OU)** : You need to create the OUs associated to the departments in your CSV file in `Active Directory Users and Computers`.
  
You will need the following files :
- `generate_adusers.ps1` (PowerShell script)
- `employee_list.csv` (CSV file containing user data)

> Make sure both files are in the **same directory** before running the script.

## Instructions
### 1. Open PowerShell as Admin
Before running the script, ensure you open Windows PowerShell with Administrator privileges.

### 2. Set Execution Policy
To allow the script to run, update your PowerShell execution policy with the following command:

```powershell
set-executionpolicy unrestricted
```

> When prompted, enter `Y` to confirm.

### 3. Navigate to the Script Directory
Use the `cd` (Change Directory) command to navigate to the folder where both the PowerShell script and the CSV file are located. For example:

```
cd C:\Documents
```

### 4. Execute the Script
Execute the script using the following command. This will start the user creation process:

```powershell
.\generate_adusers.ps1 .\employee_list.csv
```

> If you encounter a security warning, type `Y` to allow the script to run.

The script will read the `employee_list.csv` file and proceed to create the users in Active Directory.

### 5. Verify User Creation
After running the script, you can verify that the users were successfully created in Active Directory. Follow these steps :
- Open `Active Directory Users and Computers`.
- Navigate to the relevant Organizational Unit (OU) or domain.
- Verify that the new users appear under the corresponding OU or organizational structure.
