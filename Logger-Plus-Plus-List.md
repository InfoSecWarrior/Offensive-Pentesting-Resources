<h1 align="center">Logger++ </h1>

Logger++ is a powerful logging extension for Burp Suite, a popular web application security testing tool. It enhances the logging capabilities of Burp Suite by 
allowing you to log requests and responses from all Burp Suite tools. Logger++ offers several features to help you analyze and filter logs effectively.

Here are some key features of Logger++:

-   **Logging:** Logger++ logs requests and responses from various Burp Suite tools, providing a comprehensive view of the web application interactions.

-   **Tool-specific logging:** You can choose to log requests and responses from a specific tool within Burp Suite, allowing you to focus on the tool of interest.

-   **Export to JSON:** Logger++ enables you to save the log results in JSON format, making it easier to analyze the data using other tools or share it with colleagues.

-   **Custom regular expressions:** You can define custom regular expressions to extract and display specific information from the request and response data.

-   **Customizable column headers:** Logger++ allows you to customize the column headers in the log table, tailoring the output to your specific requirements.

-   **Advanced filters:** You can create advanced filters to display only the requests that meet specific conditions, helping you focus on relevant entries.


<h2 align="center">Regular Expression List for Display Filters.</h1>

| NO. | Regex                                                        | Description                                          |
| --- | ------------------------------------------------------------ | ---------------------------------------------------- |
| 1   | Request.Path == "/"                                          | Matches requests with the path "/"                   |
| 2   | Request.Path == "/" AND Response.Status == "200"             | Matches requests with the path "/" and response status 200 |
| 3   | Request.Path == "/" AND Request.Method == "POST"             | Matches POST requests with the path "/"              |
| 4   | Request.Path == "/" AND Request.Method == "GET"              | Matches GET requests with the path "/"               |
| 5   | Request.Path == "/" AND Request.Method == "GET" AND Request.Query == "" | Matches GET requests with the path "/" and empty query string |
| 6   | Request.Method IN ["POST", "GET"]                            | Matches requests with HTTP methods POST or GET       |
| 7   | Request.HasGetParam == true                                  | Matches requests with GET parameters present         |
| 8   | Request.HasGetParam == false                                 | Matches requests without GET parameters              |
| 9   | Response.StatusCode MATCHES "3[0-9]{2}"                      | Matches responses with status codes starting with 300 |
| 10  | Request.Method == "GET" AND Request.Path CONTAINS "/"        | Matches GET requests with the path containing "/"    |
| 11  | Request.Path CONTAINS "/admin"                               | Matches requests with the path containing "/admin"   |
| 12  | Request.Path MATCHES ".*\\.js$"                              | Matches requests with the path ending in ".js"       |
| 13  | Response.Title == "Access Denied"                            | Matches responses with the title "Access Denied"     |
| 14  | Response.InferredType IN ["JSON", "HTML", "XML"]             | Matches responses with inferred types JSON, HTML, or XML |
| 15  | Response.Length < 5000                                       | Matches responses with length less than 5000         |
| 16  | Request.Path MATCHES "^/api/.*$"                             | Matches requests with a path starting with "/api/" |
| 17  | Response.Headers CONTAINS "Location: .*"                     | Matches responses with the "Location" header present |
| 18  | Request.CookieString CONTAINS "id="                          | Matches requests with cookie string containing "id=" |
| 19  | Response.Headers CONTAINS "Content-Security-Policy"          | Matches responses with header containing "Content-Security-Policy" |
| 20  | Request.Method == "POST" AND Request.Length < 10000          | Matches POST requests with length less than 10000    |
| 21  | Response.Headers CONTAINS "X-XSS-Protection"                 | Matches responses with header containing "X-XSS-Protection" |
| 22  | Response.Status MATCHES "2[0-9]{2}"                          | Matches responses with status codes starting with 200 |
| 23  | Response.Headers CONTAINS "Set-Cookie:"                      | Matches responses with header containing "Set-Cookie:" |
| 24  | Request.Headers CONTAINS "User-Agent: Mozilla/5\\.0"         | Matches requests with User-Agent header "Mozilla/5.0" |
| 25  | Request.Headers CONTAINS "Accept-Language: en"               | Matches requests with Accept-Language header "en"    |
| 26  | Response.Body CONTAINS "Success"                             | Matches responses containing "Success" in the body  |
| 27  | Response.Headers CONTAINS "X-Frame-Options: DENY"            | Matches requests with X-Frame-Options header "DENY"  |
| 28  | Response.StatusCode MATCHES "4[0-9]{2}"                      | Matches responses with status codes starting with 400 |
| 29  | Request.HasSentCookies == true                               | Matches requests with sent cookies                   |
| 30  | Request.Headers CONTAINS "Authorization: Bearer "            | Matches requests with Authorization header "Bearer" |
| 31  | Response.Headers CONTAINS "Server: Apache"                   | Matches responses with Server header "Apache"        |
| 32  | Request.Method == "POST" AND Request.HasParams == true       | Matches POST requests with parameters                |
| 33  | Request.Method == "GET" AND Request.HasParams == false       | Matches GET requests without parameters              |
| 34  | Response.Status MATCHES "5[0-9]{2}"                          | Matches responses with status codes starting with 500 |
| 35  | Response.Headers CONTAINS "Access-Control-Allow-Origin: *"   | Matches responses with the "Access-Control-Allow-Origin" header set to "*" |
| 36  | Request.Path MATCHES "^/users/\d+$"                          | Matches requests with paths like "/users/123" (numeric user ID)  |
| 37  | Response.Status IN ["400", "401", "403"]                     | Matches responses with status codes 400, 401, or 403 |
| 38  | Response.Headers CONTAINS "Strict-Transport-Security"        | Matches responses with the "Strict-Transport-Security" header present |
| 39  | Request.Length > 1000                                        | Matches requests with length greater than 1000 |

</br>

<h1 align="center">Regular Expressions that can be used to filter SQL error messages :syringe::syringe:</h1>

| NO. | Regex                                                                      | Description                                  |
| --- | -------------------------------------------------------------------------- | -------------------------------------------- |
| 1   | Response.Body CONTAINS "Unknown MySQL server host"                         | Matches responses containing "Unknown MySQL server host" in the body   |
| 2   | Response.Body CONTAINS "mysql database"                                    | Matches responses containing "mysql database" in the body   |
| 3   | Response.Body CONTAINS "Unknown MySQL error"                               | Matches responses containing "Unknown MySQL error" in the body   |
| 4   | Response.Body CONTAINS "can't connect to MySQL server"                     | Matches responses containing "can't connect to MySQL server" in the body   |
| 5   | Response.Body CONTAINS "No parameters exist"                               | Matches responses containing "No parameters exist" in the body   |
| 6   | Response.Body CONTAINS "Invalid parameter"                                 | Matches responses containing "Invalid parameter" in the body   |
| 7   | Response.Body CONTAINS "column number" was invalid                         | Matches responses containing "column number was invalid" in the body   |
| 8   | Response.Body CONTAINS "Can't send long data"                              | Matches responses containing "Can't send long data" in the body   |
| 9   | Response.Body CONTAINS "server could not allocate file"                    | Matches responses containing "server could not allocate file" in the body   |
| 10  | Response.Body CONTAINS "no answer from server"                             | Matches responses containing "no answer from server" in the body   |
| 11  | Response.Body CONTAINS "cannot send request event to server"               | Matches responses containing "cannot send request event to server" in the body   |
| 12  | Response.Body CONTAINS "Invalid connection"                                | Matches responses containing "Invalid connection" in the body   |
| 13  | Response.Body CONTAINS "Lost connection to MySQL server"                   | Matches responses containing "Lost connection to MySQL server" in the body   |
| 14  | Response.Body CONTAINS "Lost connection"                                   | Matches responses containing "Lost connection" in the body   |
| 15  | Response.Body CONTAINS "user not found"                                    | Matches responses containing "user not found" in the body   |
| 16  | Response.Body CONTAINS "file request rejected"                             | Matches responses containing "file request rejected" in the body   |
| 17  | Response.Body CONTAINS "database doesn't exist"                            | Matches responses containing "database doesn't exist" in the body   |
| 18  | Response.Body CONTAINS "Incorrect database name"                           | Matches responses containing "Incorrect database name" in the body   |
| 19  | Response.Body CONTAINS "dropping database"                                 | Matches responses containing "dropping database" in the body   |
| 20  | Response.Body CONTAINS "count doesn't match value count"                   | Matches responses containing "count doesn't match value count" in the body   |
| 21  | Response.Body CONTAINS "column name" already exists                         | Matches responses containing "column name already exists" in the body   |
| 22  | Response.Body CONTAINS "Incorrect column"                                  | Matches responses containing "Incorrect column" in the body   |
| 23  | Response.Body CONTAINS "Bad handshake"                                     | Matches responses containing "Bad handshake" in the body   |
| 24  | Response.Body CONTAINS "No database selected"                              | Matches responses containing "No database selected" in the body   |
| 25  | Response.Body CONTAINS "Unknown table"                                     | Matches responses containing "Unknown table" in the body   |
| 26  | Response.Body CONTAINS "Incorrect table name"                              | Matches responses containing "Incorrect table name" in the body   |
| 27  | Response.Body CONTAINS "isn't in GROUP BY"                                 | Matches responses containing "isn't in GROUP BY" in the body   |
| 28  | Response.Body CONTAINS "Query was empty"                                   | Matches responses containing "Query was empty" in the body   |
| 29  | Response.Body CONTAINS "Unknown character"                                 | Matches responses containing "Unknown character" in the body   |
| 30  | Response.Body CONTAINS "Too many columns"                                  | Matches responses containing "Too many columns" in the body   |
| 31  | Response.Body CONTAINS "is not defined"                                    | Matches responses containing "is not defined" in the body   |
| 32  | Response.Body CONTAINS "is not allowed to connect to"                      | Matches responses containing "is not allowed to connect to" in the body   |
| 33  | Response.Body CONTAINS "matching row"                                      | Matches responses containing "matching row" in the body   |
| 34  | Response.Body CONTAINS "PRIMARY KEY"                                       | Matches responses containing "PRIMARY KEY" in the body   |
| 35  | Response.Body CONTAINS "Can't open table"                                  | Matches responses containing "Can't open table" in the body   |
| 36  | Response.Body CONTAINS "unknown option"                                    | Matches responses containing "unknown option" in the body   |
| 37  | Response.Body CONTAINS "Access denied for user"                            | Matches responses containing "Access denied for user" in the body   |
| 38  | Response.Body CONTAINS "You have an error in your SQL syntax"              | Matches responses containing "You have an error in your SQL syntax" in the body   |
| 39  | Response.Body CONTAINS "Incorrect key file for table"                      | Matches responses containing "Incorrect key file for table" in the body   |
| 40  | Response.Body CONTAINS "Not unique table/alias"                            | Matches responses containing "Not unique table/alias" in the body   |
| 41  | Response.Body CONTAINS "doesn't exist in table"                            | Matches responses containing "doesn't exist in table" in the body   |
| 42  | Response.Body CONTAINS "Incorrect parameter"                               | Matches responses containing "Incorrect parameter" in the body   |
| 43  | Response.Body CONTAINS "Incorrect column name"                             | Matches responses containing "Incorrect column name" in the body   |
| 44  | Response.Body CONTAINS "Can't reopen table"                                | Matches responses containing "Can't reopen table" in the body   |
| 45  | Response.Body CONTAINS "Invalid use of NULL value"                         | Matches responses containing "Invalid use of NULL value" in the body   |
| 46  | Response.Body CONTAINS "Query execution was interrupted"                   | Matches responses containing "Query execution was interrupted" in the body   |
| 47  | Response.Body CONTAINS "Subquery value not supported"                      | Matches responses containing "Subquery value not supported" in the body   |
| 48  | Response.Body CONTAINS "parsing parameter"                                 | Matches responses containing "parsing parameter" in the body   |
| 49  | Response.Body CONTAINS "Bad SQLSTATE"                                      | Matches responses containing "Bad SQLSTATE" in the body   |
| 50  | Response.Body CONTAINS "You do not have the SUPER privilege"               | Matches responses containing "You do not have the SUPER privilege" in the body   |
| 51  | Response.Body CONTAINS "Unable to connect to foreign data"                 | Matches responses containing "Unable to connect to foreign data" in the body   |
| 52  | Response.Body CONTAINS "problem processing the query"                      | Matches responses containing "problem processing the query" in the body   |
| 53  | Response.Body CONTAINS "wrong schema"                                      | Matches responses containing "wrong schema" in the body   |
| 54  | Response.Body CONTAINS "Failed to create"                                  | Matches responses containing "Failed to create" in the body   |
| 55  | Response.Body CONTAINS "Failed to drop"                                    | Matches responses containing "Failed to drop" in the body   |
| 56  | Response.Body CONTAINS "Cannot open table"                                 | Matches responses containing "Cannot open table" in the body   |
| 57  | Response.Body CONTAINS "Index column size too large"                       | Matches responses containing "Index column size too large" in the body   |
| 58  | Response.Body CONTAINS "temporary tables"                                  | Matches responses containing "temporary tables" in the body   |
| 59  | Response.Body CONTAINS "index on temporary InnoDB table"                   | Matches responses containing "index on temporary InnoDB table" in the body   |
| 60  | Response.Body CONTAINS "Unknown query id"                                  | Matches responses containing "Unknown query id" in the body   |
| 61  | Response.Body CONTAINS "current user is invalid."                          | Matches responses containing "current user is invalid." in the body   |
| 62  | Response.Body CONTAINS "password for anonymous user"                       | Matches responses containing "password for anonymous user" in the body   |
| 63  | Response.Body CONTAINS "Incorrect GeoJSON format"                          | Matches responses containing "Incorrect GeoJSON format" in the body   |
| 64  | Response.Body CONTAINS "Unknown compression method"                        | Matches responses containing "Unknown compression method" in the body   |
| 65  | Response.Body CONTAINS "Wrong parameters"                                  | Matches responses containing "Wrong parameters" in the body   |
| 66  | Response.Body CONTAINS "Comment for database"                              | Matches responses containing "Comment for database" in the body   |
| 67  | Response.Body CONTAINS "Must pass parameter number"                        | Matches responses containing "Must pass parameter number" in the body   |
| 68  | Response.Body CONTAINS "query processor could not produce"                 | Matches responses containing "query processor could not produce" in the body   |
| 69  | Response.Body CONTAINS "incorrect data types"				                       | Matches responses containing "incorrect data types" in the response body |
| 70  | Response.Body CONTAINS "syntax errors"                                     | Matches responses containing "syntax errors" in the response body |

