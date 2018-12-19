# MySQL notes: 


## Installing MySQL:

1. Install mysql via Homebrew:

          brew install mysql

2. Set up root user options/password:

          mysql_secure_installation


## To start/stop mysql server do either:

1.

          // To start the server: (shows processes/details)

          mysqld
          
          // To stop the mysqld server:
          
          mysql.server stop

2.

          // To start/stop the server:
          
          mysql.server start
          mysql.server stop


## Next, to enter mysql (client) CLI, do either:

1. Open “Sequel Pro” and log in using:

    1. host: localhost (127.0.0.1) 
    2. username: root
    3. password: password
    4. port: 3306
    
2. From bash, type:

          mysql -u root -p
          
Then enter password.

