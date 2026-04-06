--예제 6-23
mysql> CREATE VIEW sample_view_67 AS SELECT * FROM sample54;
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM sample_view_67;
+------+------+
| no   | a    |
+------+------+
|    1 |  100 |
|    2 |  900 |
|    4 |   80 |
+------+------+
3 rows in set (0.00 sec)

--예제 6-24
mysql> CREATE VIEW sample_view_672(n,v,v2) AS
    -> SELECT no, a, a*2, FROM sample54;
  