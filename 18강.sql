--예제 4-13
mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
|  2 | XYZ  | NULL       |
+----+------+------------+
2 rows in set (0.00 sec)

--예제 4-14
mysql> UPDATE sample41 SET b = '2026-03-25' WHERE no=2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
|  2 | XYZ  | 2026-03-25 |
+----+------+------------+
2 rows in set (0.00 sec)




--예제 4-15 
mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
|  2 | XYZ  | 2026-03-25 |
+----+------+------------+
2 rows in set (0.00 sec)

mysql> UPDATE sample41 SET no = no+1;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql>  SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  2 | ABC  | 2026-03-23 |
|  3 | XYZ  | 2026-03-25 |
+----+------+----------

--예제 4-17
mysql> UPDATE sample41 SET no = no+1, a = no ;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  3 | 3    | 2026-03-23 |
|  4 | 4    | 2026-03-25 |
+----+------+------------+
2 rows in set (0.00 sec)

--예제 4=19
mysql> UPDATE sample41 SET no = no+1, a = no ;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  5 | 5    | 2026-03-23 |
|  6 | 6    | 2026-03-25 |
+----+------+------------+

--예제 4-20
mysql> UPDATE sample41 SET a=NULL;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  5 | NULL | 2026-03-23 |
|  6 | NULL | 2026-03-25 |
+----+------+------------+
2 rows in set (0.00 sec)
