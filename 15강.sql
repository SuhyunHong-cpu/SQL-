--예제 3-28
mysql> SELECT a, CASE WHEN a IS NULL THEN 0 ELSE a END "a(null=0)" FROM sample37;
+------+-----------+
| a    | a(null=0) |
+------+-----------+
|    1 |         1 |
|    2 |         2 |
| NULL |         0 |
+------+-----------+
3 rows in set (0.01 sec)

--예제 3-29
mysql> SELECT a AS "코드", CASE WHEN a =1 THEN '남자' WHEN a = 2 THEN'여자' ELSE '미지정' END AS '성별' FROM sample37;
+------+--------+
| 코드 | 성별   |
+------+--------+
|    1 | 남자   |
|    2 | 여자   |
| NULL | 미지정 |
+------+--------+
3 rows in set (0.00 sec)

--예제 3-30
mysql> SELECT a AS "코드", CASE WHEN 1 THEN '남자' WHEN 2 THEN '여자' ELSE '미지정' END AS "성별" FROM sample37;
+------+------+
| 코드 | 성별 |
+------+------+
|    1 | 남자 |
|    2 | 남자 |
| NULL | 남자 |
+------+------+
3 rows in set (0.00 sec)

--예제 3-31
mysql>  SELECT a AS "코드", CASE WHEN a =1 THEN '남자' WHEN a = 2 THEN'여자' WHEN a IS NULL THEN '데이터없음' ELSE '미지정' END AS '성별' FROM sample37;
+------+------------+
| 코드 | 성별       |
+------+------------+
|    1 | 남자       |
|    2 | 여자       |
| NULL | 데이터없음 |
+------+------------+
3 rows in set (0.00 sec)

