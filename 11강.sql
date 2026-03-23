--예제3-11
mysql> SELECT * FROM sample33;
+------+
| no   |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
|    6 |
|    7 |
+------+
7 rows in set (0.00 sec)

--예제 3-12
mysql>  SELECT * FROM sample33 ORDER BY no LIMIT 3;
+------+
| no   |
+------+
|    1 |
|    2 |
|    3 |
+------+
3 rows in set (0.00 sec)

--예제 3-13
mysql>  SELECT * FROM sample33 ORDER BY no DESC LIMIT 3;
+------+
| no   |
+------+
|    7 |
|    6 |
|    5 |
+------+
3 rows in set (0.00 sec)

--예제 3-14
mysql> SELECT * FROM sample33 LIMIT 3 OFFSET 0;
+------+
| no   |
+------+
|    1 |
|    2 |
|    3 |
+------+
3 rows in set (0.00 sec)

--예제 3-15
mysql> SELECT * FROM sample33 LIMIT 3 OFFSET 3;
+------+
| no   |
+------+
|    4 |
|    5 |
|    6 |
+------+
3 rows in set (0.00 sec)