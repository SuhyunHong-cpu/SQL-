--예제 4-11
mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
|  2 | XYZ  | NULL       |
|  3 | NULL | NULL       |
+----+------+------------+
3 rows in set (0.00 sec)

--예제 4-12
mysql> DELETE FROM sample41 WHERE no=3;
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
|  2 | XYZ  | NULL       |
+----+------+------------+
2 rows in set (0.00 sec)



