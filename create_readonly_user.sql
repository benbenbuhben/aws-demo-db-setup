CREATE USER 'readonly_user'@'%' IDENTIFIED BY 'readonly_password';
GRANT SELECT ON mydatabase.* TO 'readonly_user'@'%';
FLUSH PRIVILEGES;
