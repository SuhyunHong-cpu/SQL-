--예제 3-6
mysql> SELECT * FROM sample32;
+------+------+
| a    | b    |
+------+------+
|    1 |    1 |
|    2 |    1 |
|    2 |    2 |
|    1 |    3 |
|    1 |    2 |
+------+------+
5 rows in set (0.00 sec)

--예제 3-7
mysql>  SELECT * FROM sample32 ORDER BY a ;
+------+------+
| a    | b    |
+------+------+
|    1 |    1 |
|    1 |    3 |
|    1 |    2 |
|    2 |    1 |
|    2 |    2 |
+------+------+

--예제 3-8
mysql>  SELECT * FROM sample32 ORDER BY a,b;
+------+------+
| a    | b    |
+------+------+
|    1 |    1 |
|    1 |    2 |
|    1 |    3 |
|    2 |    1 |
|    2 |    2 |
+------+------+
5 rows in set (0.00 sec)

--예제 3-9
mysql> SELECT * FROM sample32 ORDER BY b,a;
+------+------+
| a    | b    |
+------+------+
|    1 |    1 |
|    2 |    1 |
|    1 |    2 |
|    2 |    2 |
|    1 |    3 |
+------+------+
5 rows in set (0.00 sec)

--예제 3-10
mysql> SELECT * FROM sample32 ORDER BY a ASC, b DESC;
+------+------+
| a    | b    |
+------+------+
|    1 |    3 |
|    1 |    2 |
|    1 |    1 |
|    2 |    2 |
|    2 |    1 |
+------+------+
5 rows in set (0.00 sec)