#!/bin/bash
mysqldump -u root -pYourPassword --all-databases > /backups/backup_$(date +%F).sql
