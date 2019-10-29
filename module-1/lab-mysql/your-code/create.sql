mysql> CREATE DATABASE lab_mysql;
Query OK, 1 row affected (0.03 sec)

mysql> USE lab_mysql;
Database changed

mysql> CREATE TABLE Cars (VIN INT, Manufacter VARCHAR(30), Model VARCHAR(20), Year VARCHAR (4), Color VARCHAR(10));
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Costumers (ID INT, Name VARCHAR(30), PhoneNumber VARCHAR(20), Email VARCHAR (50), Address VARCHAR(50), City VARCHAR(30), State VARCHAR(20), Country VARCHAR(30), Zipcode VARCHAR(30));
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE SalesPerson (StaffID INT, Name VARCHAR(30), StoreAtCompany VARCHAR(40));
Query OK, 0 rows affected (0.03 sec)

mysql> ALTER TABLE Cars  CHANGE VIN VIN VARCHAR(30);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE Invoices (InvoiceNumber INT, Date VARCHAR(15), Car INT, Customer INT, SalesPerson INT);
Query OK, 0 rows affected (0.01 sec)
