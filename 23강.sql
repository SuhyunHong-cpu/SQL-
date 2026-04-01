--예제 5-16
mysql> SELECT * FROM sample54;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    3 |   20 |
|    4 |   80 |
+------+------+
4 rows in set (0.02 sec)

--예제 5-17
mysql> SELECT MIN(a) FROM sample54;
+--------+
| MIN(a) |
+--------+
|     20 |
+--------+
1 row in set (0.00 sec)

--예제 5-10
mysql> DELETE FROM sample54
    -> WHERE a = (
    ->     SELECT MIN(a)
    ->     FROM (SELECT * FROM sample54) AS tmp
    -> );
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM sample54;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    4 |   80 |
+------+------+
3 rows in set (0.00 sec)

  --예제 5-19
  mysql> SELECT MIN(a) FROM sample54;
+--------+
| MIN(a) |
+--------+
|     80 |
+--------+
1 row in set (0.00 sec)

mysql> SELECT no FROM sample54;
+------+
| no   |
+------+
|    1 |
|    2 |
|    4 |
+------+

mysql> SELECT MIN(a), MAX(no)FROM sample54;
+--------+---------+
| MIN(a) | MAX(no) |
+--------+---------+
|     80 |       4 |
+--------+---------+

--예제 5-20
mysql> SELECT no, a FROM sample54;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    4 |   80 |
+------+------+
3 rows in set (0.00 sec)

--예제 5-20
mysql> SELECT
    -> (SELECT COUNT(*) FROM sample51) AS sql1,
    -> (SELECT COUNT(*) FROM sample54) AS sql2;
+------+------+
| sql1 | sql2 |
+------+------+
|    5 |    3 |
+------+------+
1 row in set (0.03 sec)

--예제 5-23
mysql> SELECt * FROM (SELECT * FROM sample54) sq;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    4 |   80 |
+------+------+
3 rows in set (0.00 sec)

--예제 5-24
mysql>  SELECt * FROM (SELECT * FROM sample54) AS sq;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    4 |   80 |
+------+------+
3 rows in set (0.00 sec)

--예제 5-25
mysql> SELECT * FROM (SELECT * FROM (SELECT * FROM sample54) sq1)sq2;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    4 |   80 |
+------+------+
3 rows in set (0.00 sec)

--예제 5-27
mysql> INSERT INTO sample541 VALUES(
    -> (SELECT COUNT(*) FROM sample51),
    -> (SELECT COUNT(*) FROM sample54)
    -> );
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM sample541;
+------+------+
| a    | b    |
+------+------+
|    5 |    3 |
+------+------+
1 row in set (0.00 sec)

--예제 5-28
mysql> INSERT INTO sample541 SELECT 1,2;
Query OK, 1 row affected (0.01 sec)
Records: 1  Duplicates: 0  Warnings: 0



