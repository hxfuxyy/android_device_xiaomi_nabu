#!/system/bin/sh

TARGET="/storage/emulated/0/Android/data"
MAX_WAIT=60
COUNT=0

while [ $COUNT -lt $MAX_WAIT ]; do
    if [ -d "$TARGET" ]; then
        chmod 0777 "$TARGET" && exit 0
    fi
    sleep 1
    COUNT=$((COUNT + 1))
done

exit 1
