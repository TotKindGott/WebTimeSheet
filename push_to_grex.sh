#!/usr/bin/env bash

logfile='/home/konstantin/Logs/grex.log'

echo $(date) >> $logfile
rsync -vxtrhup ~/WebTimesheet/* --progress --exclude=*~ konstantin@grex.org:/w/k/o/konstantin/www/timesheet/ | tee -a $logfile
echo >> $logfile

