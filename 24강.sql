--예제 5-30
mysql> SELECT * FROM sample54;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    4 |   80 |
+------+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM sample541;
+------+------+
| a    | b    |
+------+------+
|    5 |    3 |
|    1 |    2 |
+------+------+

--예제 5-31
mysql> UPDATE sample551 SET a='있음' WHERE
    -> EXISTS ( SELECT * FROM sample552 WHERE no2 = no);
Query OK, 2 rows affected (0.03 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM sample551
    -> ;
+------+------+
| no   | a    |
+------+------+
|    1 | NULL |
|    2 | NULL |
|    3 | 있음 |
|    4 | NULL |
|    5 | 있음 |
+------+------+
5 rows in set (0.01 sec)
--예제 5-32
mysql> UPDATE sample551 SET a='없음' WHERE
    -> NOT EXISTS (SELECT * FROM sample552 WHERE no2 = no);
Query OK, 3 rows affected (0.02 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> SELECT * FROM sample551
    ->     -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '->' at line 2
mysql> SELECT * FROM sample551;
+------+------+
| no   | a    |
+------+------+
|    1 | 없음 |
|    2 | 없음 |
|    3 | 있음 |
|    4 | 없음 |
|    5 | 있음 |
+------+------+
5 rows in set (0.00 sec)

--예제 5-34
mysql> SELECT * FROM sample551 WHERE no IN(3,5) ;
+------+------+
| no   | a    |
+------+------+
|    3 | 있음 |
|    5 | 있음 |
+------+------+
2 rows in set (0.01 sec)

--예제 5-35
mysql> SELECT * FROM sample551 WHERE no IN(SELECT no2 FROM sample552);
+------+------+
| no   | a    |
+------+------+
|    3 | 있음 |
|    5 | 있음 |
+------+------+
2 rows in set (0.00 sec)