mysql> UPDATE Costumers SET Email = 'ppicasso@gmail.com' WHERE Name = 'Pablo Picasso';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Costumers SET Email = 'lincoln@us.gov' WHERE Name = 'Abraham Lincoln';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE Costumers SET Email = 'hello@napoleon.me' WHERE Name = 'Napoleón Bonaparte';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0


+-------+---------------------+-------------------+--------------------+------------------------+--------+----------------+---------------+---------+
| ID    | Name                | PhoneNumber       | Email              | Address                | City   | State          | Country       | Zipcode |
+-------+---------------------+-------------------+--------------------+------------------------+--------+----------------+---------------+---------+
| 10001 | Pablo Picasso       | +34 636 17 63 82  | ppicasso@gmail.com | Paseo de la Chopera 14 | Madrid | Madrid         | Spain         | 28045   |
| 20001 | Abraham Lincoln     | +1 305 907 7086   | lincoln@us.gov     | 120 SW 8th St          | Miami  | Florida        | United States | 33130   |
| 30001 | Napoleón Bonaparte  | +33 1 79 75 40 00 | hello@napoleon.me  | 40 Rue du Colisée      | Paris  | Île-de-France  | France        | 75008   |
+-------+---------------------+-------------------+--------------------+------------------------+--------+----------------+---------------+---------+
3 rows in set (0.00 sec)
