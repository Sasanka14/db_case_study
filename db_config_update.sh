# -------------------------------------------------
# Case Study: Database Configuration Updater
# -------------------------------------------------

CONFIG_FILE="config.txt"
BACKUP_FILE="config_backup_$(date +%Y%m%d%H%M%S).txt"
LOG_FILE="update_log.txt"

# Check if config file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: $CONFIG_FILE not found!"
    exit 1
fi

# Create backup before making changes
cp "$CONFIG_FILE" "$BACKUP_FILE"
echo "[INFO] Backup created: $BACKUP_FILE" | tee -a $LOG_FILE

# Take new credentials from user
read -p "Enter new DB Host: " NEW_HOST
read -p "Enter new DB User: " NEW_USER
read -sp "Enter new DB Password: " NEW_PASS
echo

# 1. Substitute (s) → Update credentials
sed -i '' "s/^DB_HOST=.*/DB_HOST=$NEW_HOST/" "$CONFIG_FILE"
sed -i '' "s/^DB_USER=.*/DB_USER=$NEW_USER/" "$CONFIG_FILE"
sed -i '' "s/^DB_PASS=.*/DB_PASS=$NEW_PASS/" "$CONFIG_FILE"
echo "[INFO] Credentials updated" | tee -a $LOG_FILE

# 2. Insert (i) → Insert backup info at line 2
sed -i '' '2i\
BACKUP=enabled
' "$CONFIG_FILE"
echo "[INFO] Backup info inserted" | tee -a $LOG_FILE

# 3. Append (a) → Append connection status at end
sed -i '' '$a\
CONNECTION=active
' "$CONFIG_FILE"
echo "[INFO] Connection status appended" | tee -a $LOG_FILE

# 4. Delete (d) → Remove DB_NAME if present
sed -i '' '/^DB_NAME/d' "$CONFIG_FILE"
echo "[INFO] Old DB_NAME entry deleted" | tee -a $LOG_FILE

# 5. Print (p) → Preview first 10 lines
echo "[INFO] Preview of updated config:" | tee -a $LOG_FILE
sed -n '1,10p' "$CONFIG_FILE" | tee -a $LOG_FILE

echo "[SUCCESS] Configuration update completed."

