#!/bin/bash

APP_ID=2394010

SERVER_DIR=/home/palworld/Steam/steamapps/common/PalServer/Pal/Saved
BACKUP_DIR=/home/palworld/Palworld_backups

# create backup-dir if it does not exist
if [[ ! -d $BACKUP_DIR ]]; then
	mkdir -p $BACKUP_DIR
fi

# update server
/usr/games/steamcmd +login anonymous +app_update $APP_ID validate +quit

## zip server-dir to backup
tar -czvf $BACKUP_DIR/"Palworld_$(date '+%Y-%m-%d_%H-%M-%S').tar.gz" $SERVER_DIR

## delete backups
# find ${BACKUP_DIR}/ -mtime +10 -type f -delete
