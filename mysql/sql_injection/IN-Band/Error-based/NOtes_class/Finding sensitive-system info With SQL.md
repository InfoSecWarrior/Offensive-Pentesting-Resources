as we move forward with the [[Black Box Approach using information_schema]] approach , we can find some sensitive info about the server running mysql:

* `Select user();`  gives the user 
* `Select current_user();` CURRENT_USER() function is used to return the user name and host name combination for the MySQL account that the server used to authenticate the current client
* `select @@hostname;` gives the hostname
* `select VERSION();` gives the version
* `select @@datadir;` gives the data-directory the sql is running on
* `select sleep(10)` gives the command to sleep for 10 seconds 



