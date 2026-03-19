mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sample             |햣 
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> USE sample --데이터베이스에서 sample을 사용 
Database changed
mysql> SELECT * FROM sample21;
+------+--------+------------+-------------------+
| no   | name   | birthday   | address           |
+------+--------+------------+-------------------+
|    1 | 박준용 | 1976-10-18 | 대구광역시 수성구 |
|    2 | 김재진 | NULL       | 대구광역시 동구   |
|    3 | 홍길동 | NULL       | 서울특별시 마포구 |
+------+--------+------------+-------------------+
3 rows in set (0.01 sec)