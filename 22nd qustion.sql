mysql> select * from student;
+---------+----------+------------------+-----------+
| reg_no  | stu_name | department       | DBMS_mark |
+---------+----------+------------------+-----------+
| ECE0023 | reddy    | electronics      |        56 |
| CSE0024 | sandy    | computer science |        86 |
| ECE0040 | hajira   | electronics      |        40 |
+---------+----------+------------------+-----------+
3 rows in set (0.00 sec)

mysql> select * from student
    -> where DBMS_mark=(select min(DBMS_mark) from student);
+---------+----------+-------------+-----------+
| reg_no  | stu_name | department  | DBMS_mark |
+---------+----------+-------------+-----------+
| ECE0040 | hajira   | electronics |        40 |
+---------+----------+-------------+-----------+
1 row in set (0.00 sec)

mysql> select * from student
    -> order by stu_name asc;
+---------+----------+------------------+-----------+
| reg_no  | stu_name | department       | DBMS_mark |
+---------+----------+------------------+-----------+
| ECE0040 | hajira   | electronics      |        40 |
| ECE0023 | reddy    | electronics      |        56 |
| CSE0024 | sandy    | computer science |        86 |
+---------+----------+------------------+-----------+
3 rows in set (0.00 sec)

mysql> select * from student
    -> where
    -> department='electronics';
+---------+----------+-------------+-----------+
| reg_no  | stu_name | department  | DBMS_mark |
+---------+----------+-------------+-----------+
| ECE0023 | reddy    | electronics |        56 |
| ECE0040 | hajira   | electronics |        40 |
+---------+----------+-------------+-----------+
2 rows in set (0.00 sec)

mysql> select * from student
    -> where stu_name like '%dy';
+---------+----------+------------------+-----------+
| reg_no  | stu_name | department       | DBMS_mark |
+---------+----------+------------------+-----------+
| ECE0023 | reddy    | electronics      |        56 |
| CSE0024 | sandy    | computer science |        86 |
+---------+----------+------------------+-----------+
2 rows in set (0.00 sec)

mysql> select reg_no,stu_name,department
    -> from student
    -> where DBMS_mark > 50;
+---------+----------+------------------+
| reg_no  | stu_name | department       |
+---------+----------+------------------+
| ECE0023 | reddy    | electronics      |
| CSE0024 | sandy    | computer science |
+---------+----------+------------------+
2 rows in set (0.00 sec)
