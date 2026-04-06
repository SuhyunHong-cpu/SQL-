--예제 7-1
mysql> SELECT * FROM sample71_a;
+------+
| a    |
+------+
|    1 |
|    2 |
|    3 |
+------+
3 rows in set (0.04 sec)

mysql> SELECT * FROM sample71_b;
+------+
| b    |
+------+
|    2 |
|   10 |
|   11 |
+------+
3 rows in set (0.02 sec)

mysql>

--예제 7-2
mysql> SELECT * FROM sample71_a UNION SELECT * FROM sample71_b;
+------+
| a    |
+------+
|    1 |
|    2 |
|    3 |
|   10 |
|   11 |
+------+
5 rows in set (0.00 sec)

--예제 7-3
mysql> SELECT * FROM sample71_a UNION ALL SELECT * FROM sample71_b;
+------+
| a    |
+------+
|    1 |
|    2 |
|    3 |
|    2 |
|   10 |
|   11 |
+------+
6 rows in set (0.00 sec)