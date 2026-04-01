--예제ㅜ5-1
mysql> SELECt * FROM sample51;
+------+------+----------+
| no   | name | quantity |
+------+------+----------+
|    1 | A    |        1 |
|    2 | A    |        2 |
|    3 | B    |       10 |
|    4 | C    |        3 |
|    5 | NULL |     NULL |
+------+------+----------+
5 rows in set (0.05 sec)

mysql> select count(*) from sample51;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.01 sec)

--예제 5-2
mysql>  SELECT COUNT(*) FROM sample51 WHERE name='A';
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.01 sec)

--예제 5-3
mysql> SELECT COUNT(no),COUNT(name) FROM sample51;
+-----------+-------------+
| COUNT(no) | COUNT(name) |
+-----------+-------------+
|         5 |           4 |
+-----------+-------------+
1 row in set (0.00 sec)

--예제 5-4 
mysql> SELECt * FROM sample51;
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

--A 값이 중복되는 값 

--예제 5-5
mysql> SELECT ALL name from sample51;
+------+
| name |
+------+
| A    |
| A    |
| B    |
| C    |
| NULL |
+------+
5 rows in set (0.00 sec)

mysql> SELECT DISTINCT name from sample51;
+------+
| name |
+------+
| A    |
| B    |
| C    |
| NULL |
+------+
4 rows in set (0.00 sec)

--예제 5-6 
mysql>  SELECT COUNT(ALL name), COUNT(DISTINCT name) FROM sample51;
+-----------------+----------------------+
| COUNT(ALL name) | COUNT(DISTINCT name) |
+-----------------+----------------------+
|               4 |                    3 |
+-----------------+----------------------+
1 row in set (0.00 sec)







