--예제 5-10
mysql> SELECT * FROM sample51;
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

mysql> SELECT MIN(quantity),MAX(quantity),MIN(name),MAX(name) FROM sample51;
+---------------+---------------+-----------+-----------+
| MIN(quantity) | MAX(quantity) | MIN(name) | MAX(name) |
+---------------+---------------+-----------+-----------+
|             1 |            10 | A         | C         |
+---------------+---------------+-----------+-----------+
1 row in set (0.00 sec)

--예제 5-12
mysql> SELECT name FROM sample51 GROUP BY name;
+------+
| name |
+------+
| A    |
| B    |
| C    |
| NULL |
+------+
4 rows in set (0.00 sec)

--예제 5-15
mysql> SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name ORDER BY SUM(quantity) DESC;
+------+-------------+---------------+
| name | COUNT(name) | SUM(quantity) |
+------+-------------+---------------+
| B    |           1 |            10 |
| A    |           2 |             3 |
| C    |           1 |             3 |
| NULL |           0 |          NULL |
+------+-------------+---------------+
4 rows in set (0.01 sec)

