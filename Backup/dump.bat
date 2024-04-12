mysqldump --no-create-info --ignore-table=myprogress.activity_list myprogress -u root -p > data.sql
mysqldump --no-data --routines --events myprogress -u root > def.sql
