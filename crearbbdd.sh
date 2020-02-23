sudo service mysql start
mysql -u root -p
create database mnjwebpage;
CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost';
FLUSH PRIVILEGES;
