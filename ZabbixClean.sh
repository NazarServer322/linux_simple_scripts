#!/bin/bash
User="zabbix"
Passwd="zabbix"
Date=date -d $(date -d "-30 day" +%Y%m%d) +%s - take the time stamp 30 days ago
$(which mysql) -u${User} -p${Passwd} -e "
use zabbix;
DELETE FROM history WHERE 'clock' < $Date;
optimize table history;
DELETE FROM history_uint WHERE 'clock' < $Date
