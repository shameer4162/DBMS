mysql> use workers2;
Database changed
mysql> create table workers;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> use workers;
Database changed
mysql> select * from workers;
+------+-----------+--------------+-------------+
| s_no | name      | desigination | branch      |
+------+-----------+--------------+-------------+
|    1 | kalai     | manager      | tuticorin   |
|    2 | dharshini | CEO          | neyveli     |
|    3 | rajath    | TL           | kolkata     |
|    4 | swathi    | ass.manager  | chennai     |
|    5 | jasmine   | supervisor   | kanyakumari |
+------+-----------+--------------+-------------+
5 rows in set (0.00 sec)

mysql> alter table workers add salary int(20);
Query OK, 0 rows affected, 1 warning (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> select * from workers;
+------+-----------+--------------+-------------+--------+
| s_no | name      | desigination | branch      | salary |
+------+-----------+--------------+-------------+--------+
|    1 | kalai     | manager      | tuticorin   |   NULL |
|    2 | dharshini | CEO          | neyveli     |   NULL |
|    3 | rajath    | TL           | kolkata     |   NULL |
|    4 | swathi    | ass.manager  | chennai     |   NULL |
|    5 | jasmine   | supervisor   | kanyakumari |   NULL |
+------+-----------+--------------+-------------+--------+
5 rows in set (0.00 sec)

mysql> alter table workers rename column name to w_name;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from workers;
+------+-----------+--------------+-------------+--------+
| s_no | w_name    | desigination | branch      | salary |
+------+-----------+--------------+-------------+--------+
|    1 | kalai     | manager      | tuticorin   |   NULL |
|    2 | dharshini | CEO          | neyveli     |   NULL |
|    3 | rajath    | TL           | kolkata     |   NULL |
|    4 | swathi    | ass.manager  | chennai     |   NULL |
|    5 | jasmine   | supervisor   | kanyakumari |   NULL |
+------+-----------+--------------+-------------+--------+
5 rows in set (0.00 sec)

mysql> alter table worker rename to trainee;
ERROR 1146 (42S02): Table 'workers.worker' doesn't exist
mysql> alter table workers rename to trai
