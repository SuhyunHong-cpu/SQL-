--예제 5-7
mysql> SELECT * FROM Sample51;
+------+------+----------+
| no   | name | quantity |
+------+------+----------+
|    1 | A    |        1 |
|    2 | A    |        2 |
|    3 | B    |       10 |
|    4 | C    |        3 |
|    5 | NULL |     NULL |
+------+------+----------+
5 rows in set (0.00 sec)

mysql> SELECT SUM(quantity) FROM sample51;
+---------------+
| SUM(quantity) |
+---------------+
|            16 |
+---------------+
1 row in set (0.00 sec)

--예제 5-8
mysql> SELECT * FROM Sample51;
+------+------+----------+
| no   | name | quantity |
+------+------+----------+
|    1 | A    |        1 |
|    2 | A    |        2 |
|    3 | B    |       10 |
|    4 | C    |        3 |
|    5 | NULL |     NULL |
+------+------+----------+
5 rows in set (0.00 sec)

mysql> SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM sample51;
+---------------+-------------------------------+
| AVG(quantity) | SUM(quantity)/COUNT(quantity) |
+---------------+-------------------------------+
|        4.0000 |                        4.0000 |
+---------------+-------------------------------+
1 row in set (0.00 sec)

--예제 5-9
mysql> SELECT AVG(CASE WHEN quantity IS NULL THEN 0 ELSE quantity END)
    -> AS avgnull0 FROM Sample51;
+----------+
| avgnull0 |
+----------+
|   3.2000 |
+----------+
1 row in set (0.01 sec)