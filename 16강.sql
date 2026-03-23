-- 예제 4-1
mysql> SELECT * FROM sample41;
Empty set (0.00 sec)

--예제 4-2
mysql> DESC sample41;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| no    | int         | NO   |     | NULL    |       |
| a     | varchar(30) | YES  |     | NULL    |       |
| b     | date        | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

--예제 4-3
mysql> INSERT INTO sample41 VALUES ( 1, 'ABC', '2026-03-23');
Query OK, 1 row affected (0.02 sec)

--예제 4-4
mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
+----+------+------------+
1 row in set (0.00 sec)

--예제 4-5
mysql>  INSERT INTO sample41(no,a) VALUES(2,'XYZ');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
|  2 | XYZ  | NULL       |
+----+------+------------+
2 rows in set (0.00 sec)

--예제 4-6
mysql> INSERT INTO sample41(no,a,b) VALUES(3,NULL,NULL);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM sample41;
+----+------+------------+
| no | a    | b          |
+----+------+------------+
|  1 | ABC  | 2026-03-23 |
|  2 | XYZ  | NULL       |
|  3 | NULL | NULL       |
+----+------+------------+
3 rows in set (0.00 sec)

--예제 4-7
mysql> DESC sample411;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| no    | int  | NO   |     | NULL    |       |
| d     | int  | YES  |     | 0       |       |
+-------+------+------+-----+---------+-------+
2 rows in set (0.00 sec)

--예제 4-8
mysql> INSERT INTO sample411(no,d) VALUES(1,1);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM sample411;
+----+------+
| no | d    |
+----+------+
|  1 |    1 |
+----+------+
1 row in set (0.00 sec)

--예제4-9
mysql> INSERT INTO sample411(no,d) VALUES(1,DEFAULT);
Query OK, 1 row affected (0.01 sec)

mysql>  SELECT * FROM sample411;
+----+------+
| no | d    |
+----+------+
|  1 |    1 |
|  1 |    0 |
+----+------+
2 rows in set (0.00 sec)

--예제 4-10
mysql>  INSERT INTO sample411(no) VALUES(3);
Query OK, 1 row affected (0.01 sec)

mysql>   SELECT * FROM sample411;
+----+------+
| no | d    |
+----+------+
|  1 |    1 |
|  1 |    0 |
|  3 |    0 |
+----+------+
3 rows in set (0.00 sec)
