### **📌 How To Change All cPanel Passwords at Once**  
A Bash script to change all cPanel account passwords on a WHM server to a single specified password using the WHM API.

## 🚀 Features  
✔ Change all cPanel account passwords in one go  
✔ Uses WHM API for secure password updates  
✔ Simple and easy to use  

---

## 📥 **Installation & Usage**  

### **Step 1: SSH into Your Server**  
Log in to your WHM/cPanel server as the root user:  
```bash
ssh root@your-server-ip
```

### **Step 2: Download the Script**  
Run one of the following commands to download the script from GitHub:

#### Using `wget`  
```bash
wget -O change_cpanel_passwords.sh https://raw.githubusercontent.com/RitikBarnwal/change-all-cpanel-password/main/change_cpanel_passwords.sh
```
#### Using `curl`  
```bash
curl -o change_cpanel_passwords.sh https://raw.githubusercontent.com/RitikBarnwal/change-all-cpanel-password/main/change_cpanel_passwords.sh
```

### **Step 3: Grant Execution Permission**  
```bash
chmod +x change_cpanel_passwords.sh
```

### **Step 4: Run the Script**  
```bash
./change_cpanel_passwords.sh
```

---

## 🎯 **One-Liner Command (Download & Run Directly)**  
To download and execute in one step, use:  
```bash
wget -qO- https://raw.githubusercontent.com/RitikBarnwal/change-all-cpanel-password/main/change_cpanel_passwords.sh | bash
```
**OR**  
```bash
curl -s https://raw.githubusercontent.com/RitikBarnwal/change-all-cpanel-password/main/change_cpanel_passwords.sh | bash
```

---

## ⚠ **Important Notes**  
- This script **requires root access** to your WHM server.  
- Ensure that WHM API is enabled on your server.  
- The password set in the script should meet WHM's complexity requirements.  
- If you have **CSF/LFD firewall**, it may trigger alerts due to password changes.

---

## 💡 **Automate the Script (Optional)**  
To automatically change all cPanel passwords at 3 AM daily, add a cron job:  
```bash
(crontab -l; echo "0 3 * * * /root/change_cpanel_passwords.sh") | crontab -
```

---

## 🤝 **Contributing**  
Feel free to fork this repository, improve the script, and submit a pull request! 🚀  

---

## 📜 **Made By**  
This script is Made by Ritik Barnwal.  
