# User Creation Script for Windows
This PowerShell script automates the creation of local user accounts on a Windows machine by importing user data from a CSV file.

---

## Prerequisites
- You must have **Administrator privileges** on your Windows machine.
- Make sure that the following two files are downloaded and extracted from the ZIP archive :
  - `generate_windowsusers` (the PowerShell script)
  - `employee_list.csv` (the CSV file with user data)

Both files must be placed in the **same directory** before running the script.

---

## Instructions

### 1. Open PowerShell as Admin
Before running the script, open **Windows PowerShell** as an administrator.

![](https://github.com/pandathetech/AutoCreateUsers/blob/main/Windows/Assets/Screenshot%202026-02-16%20162559.png)

Click `Yes` to allow the app to make changes to your device.

![](https://github.com/pandathetech/AutoCreateUsers/blob/main/Windows/Assets/Screenshot%202026-02-16%20163049.png)

### 2. Set Execution Policy
To allow PowerShell scripts to run, update the execution policy with the following command.

```powershell
Set-ExecutionPolicy Unrestricted
```

> When prompted, type `Y` (for Yes) to confirm the change.

![](https://github.com/pandathetech/AutoCreateUsers/blob/main/Windows/Assets/Screenshot%202026-02-16%20163235.png)

### 3. Navigate to the Script Directory
Use the `cd` command to navigate to the folder where you extracted the script and CSV file. For example:

```powershell
cd C:\Users\YourName\Downloads
```

> Replace `YourName` with your actual username or folder name.

Execute the `dir` command to display the list of files in the script directory.

![](https://github.com/pandathetech/AutoCreateUsers/blob/main/Windows/Assets/Screenshot%202026-02-16%20163424.png)

### 4. Run the Script
Run the script by executing the following command:

```powershell
.\generate_windowsusers.ps1 .\employee_list.csv
```

> If you see a security warning, enter `R` to proceed and run the script.

![](https://github.com/pandathetech/AutoCreateUsers/blob/main/Windows/Assets/Screenshot%202026-02-16%20163642.png)

### 5. Verify User Creation
Right-click the Windows icon in the bottom-left corner. Click `Computer Management`.

![](https://github.com/pandathetech/AutoCreateUsers/blob/main/Windows/Assets/Screenshot%202026-02-16%20163837.png)

In the left panel, navigate to `Local Users and Groups` -> `Users`.

![](https://github.com/pandathetech/AutoCreateUsers/blob/main/Windows/Assets/Screenshot%202026-02-16%20164141.png)

You should see the new users listed in the right panel.

### 6. Re-running the Script (Optional)
This script is designed to be run once to create the user accounts. However, if you delete the users later, you can re-run the script to recreate them. Ensure the CSV file remains unchanged or is updated as needed.
