mysql> INSERT INTO Cars VALUES('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO Cars VALUES('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO Cars VALUES('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White');
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO Cars VALUES('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO Cars VALUES('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO Cars VALUES('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');
Query OK, 1 row affected (0.01 sec)

+-------------------+------------+-------------------+------+--------+
| VIN               | Manufacter | Model             | Year | Color  |
+-------------------+------------+-------------------+------+--------+
| 3K096I98581DHSNUP | Volkswagen | Tiguan            | 2019 | Blue   |
| ZM8G7BEUQZ97IH46V | Peugeot    | Rifter            | 2019 | Red    |
| RKXVNNIHLVVZOUB4M | Ford       | Fusion            | 2018 | White  |
| HKNDGS7CU31E9Z7JW | Toyota     | RAV4              | 2018 | Silver |
| DAM41UDN3CHU2WVF6 | Volvo      | V60               | 2019 | Gray   |
| DAM41UDN3CHU2WVF6 | Volvo      | V60 Cross Country | 2019 | Gray   |
+-------------------+------------+-------------------+------+--------+
6 rows in set (0.00 sec)



mysql> INSERT INTO Costumers VALUES(10001, 'Pablo Picasso', '+34 636 17 63 82', '', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO Costumers VALUES(20001, 'Abraham Lincoln', '+1 305 907 7086', '', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO Costumers VALUES(30001, 'Napoleón Bonaparte', '+33 1 79 75 40 00', '', '40 Rue du Colisée', 'Paris','Île-de-France', 'France', '75008');
Query OK, 1 row affected (0.00 sec)

+-------+---------------------+-------------------+-------+------------------------+--------+----------------+---------------+---------+
| ID    | Name                | PhoneNumber       | Email | Address                | City   | State          | Country       | Zipcode |
+-------+---------------------+-------------------+-------+------------------------+--------+----------------+---------------+---------+
| 10001 | Pablo Picasso       | +34 636 17 63 82  |       | Paseo de la Chopera 14 | Madrid | Madrid         | Spain         | 28045   |
| 20001 | Abraham Lincoln     | +1 305 907 7086   |       | 120 SW 8th St          | Miami  | Florida        | United States | 33130   |
| 30001 | Napoleón Bonaparte  | +33 1 79 75 40 00 |       | 40 Rue du Colisée      | Paris  | Île-de-France  | France        | 75008   |
+-------+---------------------+-------------------+-------+------------------------+--------+----------------+---------------+---------+
3 rows in set (0.00 sec)

mysql> INSERT INTO SalesPerson VALUES(00001, 'Petey Cruiser', 'Madrid');
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO SalesPerson VALUES(00002, 'Anna Sthesia', 'Barcelona');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO SalesPerson VALUES(00003, 'Paul Molive', 'Berlin');
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO SalesPerson VALUES(00004, 'Gail Forcewind', 'Paris');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO SalesPerson VALUES(00005, 'Paige Turner', 'Mimia');
Query OK, 1 row affected (0.01 sec)
mysql> INSERT INTO SalesPerson VALUES(00006, 'Bob Frapples', 'Mexico City');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO SalesPerson VALUES(00007, 'Walter Melon', 'Amsterdam');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO SalesPerson VALUES(00008, 'Shonda Leer', 'Sao Paulo');
Query OK, 1 row affected (0.01 sec)

+---------------+------------+------+----------+-------------+
| InvoiceNumber | Date       | Car  | Customer | SalesPerson |
+---------------+------------+------+----------+-------------+
|     852399038 | 22-08-2018 |    0 |        1 |           3 |
|     731166526 | 31-12-2018 |    3 |        0 |           5 |
|     271135104 | 22-01-2019 |    2 |        2 |           7 |
+---------------+------------+------+----------+-------------+
3 rows in set (0.00 sec)


mysql> INSERT INTO Invoices VALUES(852399038, '22-08-2018', 0, 1, 3);
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO Invoices VALUES(731166526, '31-12-2018', 3, 0, 5);
Query OK, 1 row affected (0.00 sec)
mysql> INSERT INTO Invoices VALUES(271135104, '22-01-2019', 2, 2, 7);
Query OK, 1 row affected (0.00 sec)

+---------+----------------+----------------+
| StaffID | Name           | StoreAtCompany |
+---------+----------------+----------------+
|       1 | Petey Cruiser  | Madrid         |
|       2 | Anna Sthesia   | Barcelona      |
|       3 | Paul Molive    | Berlin         |
|       4 | Gail Forcewind | Paris          |
|       5 | Paige Turner   | Mimia          |
|       6 | Bob Frapples   | Mexico City    |
|       7 | Walter Melon   | Amsterdam      |
|       8 | Shonda Leer    | Sao Paulo      |
+---------+----------------+----------------+
8 rows in set (0.00 sec)
