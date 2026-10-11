#!/bin/bash

# Create necessary dirs
for dir in logs config scripts; do
    if [ ! -d "$dir" ]; then
        mkdir "$dir"
        echo "Directory created: $dir"
    else
        echo "Directory already exists: $dir"
    fi
done

# Create necessary files
for file in logs/system.log config/app.conf scripts/backup.sh; do
    if [ ! -f "$file" ]; then
        touch "$file"
        echo "File created: $file"
    else
        echo "File already exists: $file"
    fi
done
# Add sample content using echo commands
echo "[Success] Environment setup completed successfully." > logs/system.log
echo "[Error] Failed to complete environment setup." >> logs/system.log
echo "[Error] FATAL: Environment setup failed." >> logs/system.log

echo "[INFO] Application configuration settings." > config/app.conf
echo "[DEBUG] Debugging information for application." >> config/app.conf

echo "#!/bin/bash" > scripts/backup.sh
echo "echo 'Backup script executed successfully.'" >> scripts/backup.sh


# Chmod permissions modifications.

chmod 644 logs/system.log
chmod 444 config/app.conf
chmod 755 scripts/backup.sh


# Listing out Permission of all files.

ls -l logs scripts config




