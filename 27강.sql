mysql>  CREATE TABLE sample631(
    -> a INTEGER NOT NULL,
    -> b INTEGER NOT NULL UNIQUE,
    -> c VARCHAR(30));
Query OK, 0 rows affected (0.05 sec)

--예제 6-7
mysql> CREATE TABLE sample632(
    -> no INTEGER NOT NULL,
    -> sub_no INTEGER NOT NULL,
    -> name VARCHAR(30),
    -> PRIMARY KEY(no, sub_no));
Query OK, 0 rows affected (0.06 sec)

--예제 6-8
mysql> CREATE TABLE sample632(
    -> no INTEGER NOT NULL,
    -> sub_no INTEGER NOT NULL,
    -> name VARCHAR(30),
    -> CONSTANT pkey_sample PRIMARY KEY(no,sub_no));

--예제 6-10
mysql> ALTER TABLE sample631 ADD CONSTRAINT pkey_sample631 PRIMARY KEY(a);
Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

--예제 6-11
mysql> ALTER TABLE sample631 MODIFY c VARCHAR(30);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

--예제 6-12
mysql> ALTER TABLE sample631 DROP CONSTRAINT pkey_sample631;

--예제 6-13
mysql> ALTER TABLE sample631 DROP PRIMARY KEY;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

--예제 6-14
mysql> CREATE TABLE sample634(
    -> p INTEGER NOT NULL,
    -> a VARCHAR(30),
    -> CONSTRAINT pkey_sample634 PRIMARY KEY(p));
Query OK, 0 rows affected (0.04 sec)

--예제 6-15
mysql> INSERT INTO sample634 VALUES(1,'첫째줄');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO sample634 VALUES(1,'둘째줄');
ERROR 1062 (23000): Duplicate entry '1' for key 'sample634.PRIMARY'
mysql> INSERT INTO sample634 VALUES(1,'둘째줄');
ERROR 1062 (23000): Duplicate entry '1' for key 'sample634.PRIMARY'
mysql> INSERT INTO sample634 VALUES(2,'둘째줄');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO sample634 VALUES(3,'삼0째줄');
Query OK, 1 row affected (0.01 sec)

--예제 6-18
mysql> SELECT a,b FROM sample635;
+---+---+
| a | b |
+---+---+
| 1 | 1 |
| 1 | 2 |
| 1 | 3 |
| 2 | 1 |
| 2 | 2 |
+---+---+
5 rows in set (0.01 sec)
