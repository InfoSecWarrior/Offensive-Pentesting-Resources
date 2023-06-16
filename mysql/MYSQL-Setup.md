**Step 1: Connect to MySQL** Open a terminal or command prompt and enter the following command to connect to MySQL:
```
mysql -u your_username -p
```

Replace `your_username` with your MySQL username. You will be prompted to enter your MySQL password.

**Step 2: Create the Database** Once you are connected to MySQL, run the following command to create the database:
```
CREATE DATABASE your_database_name;
```

Replace `your_database_name` with the desired name for your database.

**Step 3: Switch to the Database** Use the following command to switch to the newly created database:
```
USE your_database_name;
```

**Step 4: Create the Tables** Now, the schema file '.sql' one , paste the path of the file here in this code:
```
source your_file_name.sql;
```

**Step 5: Insert Data into Tables** Now, you can insert dummy data into the tables. Use the following SQL statements provided in the insert_values.txt file 
paste one insert statement at a time

**Step 6: Verify the Data** You can verify that the data has been inserted correctly by running SELECT queries on the tables:
```
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

```



