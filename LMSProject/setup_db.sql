CREATE DATABASE IF NOT EXISTS lms_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'lmsuser'@'localhost' IDENTIFIED BY 'lmspassword123!';
GRANT ALL PRIVILEGES ON lms_db.* TO 'lmsuser'@'localhost';
FLUSH PRIVILEGES;
