# 📑 Database Configuration Updater

## 🔹 Overview

This project is a shell scripting case study for the **Operating System** course.  
It automates updates to a database configuration file using **Linux `sed` commands**.  
The script ensures consistency, prevents manual errors, and maintains reliability.

---

## 🔹 Features

* Replace database host, user, and password (`s`)  
* Insert backup information (`i`)  
* Append connection status (`a`)  
* Delete outdated entries (`d`)  
* Preview modified configuration (`p`)  

---

## 🔹 Files Included

* `config.txt` → Sample configuration file  
* `db_config_update.sh` → Shell script for automation  
* `config_backup_*.txt` → Auto-generated backup files  
* `update_log.txt` → Execution log with step-by-step updates  

---

## 🔹 How to Run

```bash
# Clone repository
git clone https://github.com/Sasanka14/db_case_study.git
cd db_case_study

# Give permission
chmod +x db_config_update.sh

# Run the script
./db_config_update.sh
````

---

## 🔹 Example

**Before Update (config.txt)**

```txt
DB_HOST=localhost
DB_USER=admin
DB_PASS=1234
DB_NAME=testdb
```

**After Update**

```txt
DB_HOST=127.0.0.1
BACKUP=enabled
DB_USER=Sasanka
DB_PASS=Panda1234567
CONNECTION=active
```

---

## 🔹 Screenshots  

<table align="center">
  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/caecfaab-0239-4396-9b18-a84c028834ae" alt="Original Config File" width="250" height="160"/><br/>
      <b>Original Config</b>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/f7927bc6-39fe-41e7-af71-9ff51c9b750a" alt="Script Execution" width="250" height="160"/><br/>
      <b>Script Execution</b>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/e8e66d92-b4e3-4d0a-bce8-4d9e9bad8d77" alt="Updated Config File" width="250" height="160"/><br/>
      <b>Updated Config</b>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/afb9e96e-0098-4f41-aee3-9a0781c1d3ac" alt="Backup and Logs" width="250" height="160"/><br/>
      <b>Backup & Logs</b>
    </td>
  </tr>
</table>



## 🔹 Conclusion

This project demonstrates how automation through shell scripting can simplify and secure routine system administration tasks. By reducing manual intervention, it improves efficiency, minimizes errors, and ensures reliable database configuration management.
