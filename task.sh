#! /bin/bash

mysqldump -u $DB_USER -p$DB_PASSWORD ShopDB | mysql -u $DB_USER -p$DB_PASSWORD ShopDBReserve

mysqldump -u $DB_USER -p$DB_PASSWORD --no-create-info --replace ShopDB | mysql -u $DB_USER -p$DB_PASSWORD ShopDBDevelopment