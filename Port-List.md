<h1 align="center">List of Common Ports and Protocols.</h1>

## Application/Web Servers

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | http                                | 80, 8080, 8081, 8000 | TCP      |
| 2   | https                               | 443, 8443, 4443     | TCP      |
| 3   | Tomcat Startup                      | 8080                | TCP      |
| 4   | Tomcat Startup (SSL)                | 8443                | TCP      |
| 5   | Tomcat Shutdown                     | 8005                | TCP      |
| 6   | Tomcat AJP Connector                | 8009                | TCP      |
| 7   | GlassFish HTTP                      | 8080                | TCP      |
| 8   | GlassFish HTTPS                     | 8181                | TCP      |
| 9   | GlassFish Admin Server              | 4848                | TCP      |
| 10  | Jetty                               | 8080                | TCP      |
| 11  | Jonas Admin Console                 | 9000                | TCP      |
| 12  | IHS Administration                  | 8008                | TCP      |
| 13  | JBoss Admin Console                 | 8080                | TCP      |
| 14  | WildFly Admin Console               | 9990                | TCP      |
| 15  | WebLogic Admin Console              | 7001                | TCP      |
| 16  | WAS Admin Console (SSL)             | 9043                | TCP      |
| 17  | WAS Admin Console                   | 9060                | TCP      |
| 18  | WAS JVM HTTP                        | 9080                | TCP      |
| 19  | WAS JVM HTTPS                       | 9443                | TCP      |
| 20  | Alfresco Explorer/Share             | 8080                | TCP      |
| 21  | Apache Derby Network Server         | 1527                | TCP      |
| 22  | OHS                                 | 7777                | TCP      |
| 23  | OHS (SSL)                           | 4443                | TCP      |
| 24  | Jenkins                             | 8080                | TCP      |

## Panel

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | cPanel                              | 2082                | TCP      |
| 2   | cPanel - SSL                        | 2083                | TCP      |
| 3   | WHM                                 | 2086                | TCP      |
| 4   | WHM - SSL                           | 2087                | TCP      |
| 5   | Webmail                             | 2095                | TCP      |
| 6   | Webmail - SSL                       | 2096                | TCP      |
| 7   | Plesk Control Panel                 | 8880                | TCP      |
| 8   | Plesk Control Panel - SSL           | 8443                | TCP      |
| 9   | Plesk Linux Webmail                 | N/A*                | TCP      |
| 10  | Plesk Windows Webmail (SmarterMail) | 9998**              | TCP      |
| 11  | Virtuozzo                           | 4643                | TCP      |
| 12  | DotNet Panel                        | 9001                | TCP      |
| 13  | DotNet Panel Login                  | 80                  | TCP      |
| 14  | RDP (Remote Desktop Protocol)       | 4489                | TCP      |
| 15  | SFTP Shared/Reseller Servers        | 2222                | TCP      |
| 16  | Webdisk                             | 2077                | TCP      |
| 17  | Webdisk - SSL                       | 2078                | TCP      |
| 18  | Plesk Control Panel                 | 8880                | TCP      |
| 19  | Plesk Control Panel - SSL           | 8443                | TCP      |
| 20  | Plesk Linux Webmail                 | N/A*                | TCP      |
| 21  | Plesk Windows Webmail (SmarterMail) | 9998**              | TCP      |
| 22  | Virtuozzo                           | 4643                | TCP      |
| 23  | DotNet Panel                        | 9001                | TCP      |
| 24  | DotNet Panel Login                  | 80                  | TCP      |
| 25  | RDP (Remote Desktop Protocol)       | 4489                | TCP      |

## File Transfer

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | ftp                                 | 21, 20, 2121        | TCP      |
| 2   | ftps                                | 21, 20, 2121, 990, 989 | TCP   |
| 3   | rscp                                | 514                 | TCP      |
| 4   | oftp                                | 6619                | TCP/UDP  |
| 5   | cifs / smb / samba                  | 139, 445            | TCP/UDP  |
| 6   | ssh                                 | 22, 2222            | TCP      |
| 7   | nfs                                 | 111, 2049, 4045, 1110 | TCP    |
| 8   | tftp                                | 69                  | UDP      |
| 9   | http                                | 80, 8080, 8081, 8000 | TCP      |
| 10  | https                              | 443, 8443, 4443     | TCP      |
| 11  | telnet                              | 23                  | TCP      |
| 12  | git                                 | 9418                | TCP      |
| 13  | Apple Filing Protocol (afp)         | 548                 | TCP      |
| 14  | moosefs                             | 9419, 9420, 9421, 9422, 9425 | TCP |

## Remote Connection

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | ssh                                 | 22, 2222            | TCP      |
| 2   | telnet                              | 23                  | TCP      |
| 3   | rdp                                 | 3389                | TCP      |
| 4   | vnc                                 | 5900, 5902, 5903, 6002, 6003 | TCP/UDP |

## Directory Access

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | LDAP                                | 389                 | TCP      |
| 2   | LDAP (SSL)                          | 636                 | TCP      |

## Database / Datastore

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | DB2                                 | 50000               | TCP      |
| 2   | Redis Servers                       | 6379                | TCP      |
| 3   | Oracle Listener                     | 1521                | TCP      |
| 4   | mongoDB                             | 27017               | TCP      |
| 5   | MySQL                               | 3306                | TCP      |
| 6   | MS SQL                              | 1433                | TCP      |
| 7   | Memcached                           | 11211               | TCP      |
| 8   | MariaDB                             | 3306                | TCP      |
| 9   | Postgresql                          | 5432                | TCP      |

## Messaging/Transfer

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | MQ Listener                         | 1414                | TCP/UDP  |
| 2   | IBM Connect:Direct                  | 1364                | TCP/UDP  |
| 3   | RabbitMQ Web UI                     | 15672               | TCP/UDP  |
| 4   | Tibco RV Daemon                     | 7474                | TCP/UDP  |
| 5   | GoToMyPC                            | 8200                | TCP/UDP  |

## Mail Transfer

| No. | Name                                | Port No.            | Protocol |
|-----|-------------------------------------|---------------------|----------|
| 1   | POP3                                | 110                 | TCP/UDP  |
| 2   | POP3 - SSL                          | 995                 | TCP/UDP  |
| 3   | IMAP                                | 143                 | TCP/UDP  |
| 4   | IMAP - SSL                          | 993                 | TCP/UDP  |
| 5   | SMTP                                | 25                  | TCP/UDP  |
| 6   | SMTP Alternate                      | 26                  | TCP/UDP  |
| 7   | SMTP Alternate                      | 587                 | TCP/UDP  |
| 8   | SMTP - SSL                          | 465                 | TCP/UDP  |
