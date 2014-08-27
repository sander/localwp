#create user 'wordpress' identified by 'password';
create database wordpress;
grant all privileges on wordpress.* to 'wordpress'@'localhost' identified by 'password';
flush privileges;
