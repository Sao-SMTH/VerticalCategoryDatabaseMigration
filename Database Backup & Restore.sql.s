EXEC msdb.dbo.rds_backup_database 
    @source_db_name='smthgood_prodclone', 
    @s3_arn_to_backup_to='arn:aws:s3:::smthgood-db-backup/smthgood_prodclone_by_sak.bak';

EXEC msdb.dbo.rds_task_status 
    @db_name='smthgood_prodclone';
--DB Restore
EXEC msdb.dbo.rds_restore_database 
    @restore_db_name = 'smthgood_prodclone_sak', 
    @s3_arn_to_restore_from = 'arn:aws:s3:::smthgood-db-backup/smthgood_prodclone_by_sak.bak';
EXEC msdb.dbo.rds_task_status 
    @db_name = 'smthgood_prodclone_sak';

