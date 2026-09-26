mysql> DROP DATABASE IF EXISTS Man;
Query OK, 2 rows affected (1.842 sec)

mysql> CREATE DATABASE Man;
Query OK, 1 row affected (0.104 sec)

mysql> USE Man;
Database changed


mysql> CREATE TABLE ROUTES(
    -> ROUTES_ID VARCHAR(20) PRIMARY KEY,
    -> ROUTE VARCHAR(15),
    -> SERVICE_TYPE VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.715 sec)


mysql> CREATE TABLE DELIVERIES(
    -> RECORD_ID INT PRIMARY KEY,
    -> MONTH VARCHAR(15),
    -> ROUTES_ID VARCHAR(20),
    -> HUB VARCHAR(20),
    -> PROMISED_DAYS INT,
    -> ACTUAL_DAYS INT
    -> );
Query OK, 0 rows affected (0.251 sec)




mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (1,'JAN','R1','MUMBAI',2,2);
Query OK, 1 row affected (0.618 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (2,'JAN','R2','CHENNAI',3,4);
Query OK, 1 row affected (0.534 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (3,'JAN','R3','DELHI',5,8);
Query OK, 1 row affected (0.586 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (4,'JAN','R4','MUMBAI',6,10);
Query OK, 1 row affected (0.873 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (5,'FEB','R1','CHENNAI',2,5);
Query OK, 1 row affected (0.495 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (6,'FEB','R2','DELHI',3,3);
Query OK, 1 row affected (0.500 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (7,'FEB','R3','DELHI',5,10);
Query OK, 1 row affected (0.130 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (8,'FEB','R4','CHENNAI',6,7);
Query OK, 1 row affected (0.231 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (9,'MAR','R1','DELHI',2,8);
Query OK, 1 row affected (0.556 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (10,'MAR','R2','MUMBAI',3,5);
Query OK, 1 row affected (0.540 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (11,'MAR','R3','CHENNAI',5,5);
Query OK, 1 row affected (0.531 sec)

mysql> INSERT INTO DELIVERIES (RECORD_ID, MONTH, ROUTES_ID, HUB, PROMISED_DAYS, ACTUAL_DAYS) VALUES (12,'MAR','R4','MUMBAI',6,15);
Query OK, 1 row affected (0.589 sec)


mysql> INSERT INTO ROUTES (ROUTES_ID, ROUTE, SERVICE_TYPE) VALUES ('R1','METRO LINK','EXPRESS');
Query OK, 1 row affected (0.562 sec)

mysql> INSERT INTO ROUTES (ROUTES_ID, ROUTE, SERVICE_TYPE) VALUES ('R2','CITY DASH','EXPRESS');
Query OK, 1 row affected (0.553 sec)

mysql> INSERT INTO ROUTES (ROUTES_ID, ROUTE, SERVICE_TYPE) VALUES ('R3','HIGHWAY FREIGHT','STANDARD');
Query OK, 1 row affected (0.541 sec)

mysql> INSERT INTO ROUTES (ROUTES_ID, ROUTE, SERVICE_TYPE) VALUES ('R4','RURAL FEEDER','STANDARD');
Query OK, 1 row affected (0.495 sec)



mysql> SELECT * FROM DELIVERIES;
+-----------+-------+-----------+---------+---------------+-------------+
| RECORD_ID | MONTH | ROUTES_ID | HUB     | PROMISED_DAYS | ACTUAL_DAYS |
+-----------+-------+-----------+---------+---------------+-------------+
|         1 | JAN   | R1        | MUMBAI  |             2 |           2 |
|         2 | JAN   | R2        | CHENNAI |             3 |           4 |
|         3 | JAN   | R3        | DELHI   |             5 |           8 |
|         4 | JAN   | R4        | MUMBAI  |             6 |          10 |
|         5 | FEB   | R1        | CHENNAI |             2 |           5 |
|         6 | FEB   | R2        | DELHI   |             3 |           3 |
|         7 | FEB   | R3        | DELHI   |             5 |          10 |
|         8 | FEB   | R4        | CHENNAI |             6 |           7 |
|         9 | MAR   | R1        | DELHI   |             2 |           8 |
|        10 | MAR   | R2        | MUMBAI  |             3 |           5 |
|        11 | MAR   | R3        | CHENNAI |             5 |           5 |
|        12 | MAR   | R4        | MUMBAI  |             6 |          15 |
+-----------+-------+-----------+---------+---------------+-------------+
12 rows in set (0.477 sec)


mysql> SELECT * FROM ROUTES;
+-----------+-----------------+--------------+
| ROUTES_ID | ROUTE           | SERVICE_TYPE |
+-----------+-----------------+--------------+
| R1        | METRO LINK      | EXPRESS      |
| R2        | CITY DASH       | EXPRESS      |
| R3        | HIGHWAY FREIGHT | STANDARD     |
| R4        | RURAL FEEDER    | STANDARD     |
+-----------+-----------------+--------------+
4 rows in set (0.005 sec)


mysql> SELECT HUB FROM DELIVERIES
    -> GROUP BY ACTUAL DAYS
    -> LIMIT 2;