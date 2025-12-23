#!/bin/bash
MYSQL_PWD='12341234' mysql -u root <<'SQLEOF'
CREATE DATABASE IF NOT EXISTS lms_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
SELECT 'Database created' AS Status;
SQLEOF
