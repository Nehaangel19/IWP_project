C:\Users\angel>mysql -u root -p
Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 17
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE project_portal;
ERROR 1007 (HY000): Can't create database 'project_portal'; database exists
mysql> use project_portal;
Database changed
mysql> CREATE TABLE review0_submissions (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id VARCHAR(50) NOT NULL,
    ->     student_name VARCHAR(100) NOT NULL,
    ->     class_name VARCHAR(50) NOT NULL,
    ->     objective TEXT,
    ->     implementation TEXT,
    ->     tools TEXT,
    ->     presentation_status VARCHAR(50),
    ->     completion_status VARCHAR(50),
    ->     final_status VARCHAR(50),
    ->     file_path VARCHAR(255),   -- store uploaded file path
    ->     submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> describe review0_submissions;
+---------------------+--------------+------+-----+-------------------+-------------------+
| Field               | Type         | Null | Key | Default           | Extra             |
+---------------------+--------------+------+-----+-------------------+-------------------+
| id                  | int          | NO   | PRI | NULL              | auto_increment    |
| student_id          | varchar(50)  | NO   |     | NULL              |                   |
| student_name        | varchar(100) | NO   |     | NULL              |                   |
| class_name          | varchar(50)  | NO   |     | NULL              |                   |
| objective           | text         | YES  |     | NULL              |                   |
| implementation      | text         | YES  |     | NULL              |                   |
| tools               | text         | YES  |     | NULL              |                   |
| presentation_status | varchar(50)  | YES  |     | NULL              |                   |
| completion_status   | varchar(50)  | YES  |     | NULL              |                   |
| final_status        | varchar(50)  | YES  |     | NULL              |                   |
| file_path           | varchar(255) | YES  |     | NULL              |                   |
| submitted_at        | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+---------------------+--------------+------+-----+-------------------+-------------------+
12 rows in set (0.01 sec)

mysql> select * from review0_submissions;
Empty set (0.01 sec)

mysql> select * from review0_submissions;
Empty set (0.00 sec)

mysql> exit;
Bye

C:\Users\angel>mysql -u root -p
Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 22
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE mydb;
Query OK, 1 row affected (0.01 sec)

mysql> USE mydb;
Database changed
mysql>
mysql> -- Example table
mysql> CREATE TABLE users (
    ->   id INT AUTO_INCREMENT PRIMARY KEY,
    ->   name VARCHAR(100),
    ->   email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> select * from review0_submissions;
ERROR 1146 (42S02): Table 'mydb.review0_submissions' doesn't exist
mysql> CREATE TABLE review0_submissions (
    ->   id INT AUTO_INCREMENT PRIMARY KEY,
    ->   student_id VARCHAR(50),
    ->   student_name VARCHAR(100),
    ->   class_name VARCHAR(50),
    ->   objective TEXT,
    ->   implementation TEXT,
    ->   tools TEXT,
    ->   presentation_status VARCHAR(100),
    ->   completion_status VARCHAR(100),
    ->   final_status VARCHAR(100),
    ->   file_path VARCHAR(255),
    ->   submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> describe review0_submissions;
+---------------------+--------------+------+-----+-------------------+-------------------+
| Field               | Type         | Null | Key | Default           | Extra             |
+---------------------+--------------+------+-----+-------------------+-------------------+
| id                  | int          | NO   | PRI | NULL              | auto_increment    |
| student_id          | varchar(50)  | YES  |     | NULL              |                   |
| student_name        | varchar(100) | YES  |     | NULL              |                   |
| class_name          | varchar(50)  | YES  |     | NULL              |                   |
| objective           | text         | YES  |     | NULL              |                   |
| implementation      | text         | YES  |     | NULL              |                   |
| tools               | text         | YES  |     | NULL              |                   |
| presentation_status | varchar(100) | YES  |     | NULL              |                   |
| completion_status   | varchar(100) | YES  |     | NULL              |                   |
| final_status        | varchar(100) | YES  |     | NULL              |                   |
| file_path           | varchar(255) | YES  |     | NULL              |                   |
| submitted_at        | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+---------------------+--------------+------+-----+-------------------+-------------------+
12 rows in set (0.01 sec)

mysql> select * from review0_submissions;
Empty set (0.01 sec)

mysql> select * from review0_submissions;
Empty set (0.00 sec)

mysql> select * from review0_submissions;
Empty set (0.00 sec)

mysql> select * from review0_submissions;
Empty set (0.00 sec)

mysql> exit
Bye

C:\Users\angel>mysql -u root -p
Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.0.43 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>  select * from review0_submissions;
ERROR 1046 (3D000): No database selected
mysql> USE mydb;
Database changed
mysql>  select * from review0_submissions;
Empty set (0.00 sec)

mysql>  select * from review0_submissions;
Empty set (0.00 sec)

mysql>  select * from review0_submissions;
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
| id | student_id | student_name | class_name | objective | implementation | tools    | presentation_status | completion_status | final_status | file_path | submitted_at        |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
|  1 | 2360357    | neha         | 5btcs a    | kdjik     | ksefnkw        | ewrnjfns | yes                 | no                | finish       | NULL      | 2025-09-09 15:40:03 |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
1 row in set (0.00 sec)

mysql>  select * from review0_submissions;
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
| id | student_id | student_name | class_name | objective | implementation | tools    | presentation_status | completion_status | final_status | file_path | submitted_at        |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
|  1 | 2360357    | neha         | 5btcs a    | kdjik     | ksefnkw        | ewrnjfns | yes                 | no                | finish       | NULL      | 2025-09-09 15:40:03 |
|  2 | 2360412    | manisha      | 5btcsc     | ekuf      | jfch           | jda      | jewh                | jrek              | erkj         | NULL      | 2025-09-09 15:41:15 |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
2 rows in set (0.00 sec)

mysql> create database project_evaluation;
Query OK, 1 row affected (0.03 sec)

mysql> use project_evaluation;
Database changed
mysql> CREATE TABLE phase1_evaluations (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id VARCHAR(20) NOT NULL,
    ->     student_name VARCHAR(100) NOT NULL,
    ->     class_name VARCHAR(50),
    ->
    ->     -- Review 0
    ->     review0_marks INT CHECK (review0_marks BETWEEN 0 AND 20),
    ->
    ->     -- Review 1
    ->     review1_marks INT CHECK (review1_marks BETWEEN 0 AND 20),
    ->
    ->     -- Review 2 criteria
    ->     review2_design INT CHECK (review2_design BETWEEN 0 AND 15),
    ->     review2_implementation INT CHECK (review2_implementation BETWEEN 0 AND 15),
    ->     review2_presentation INT CHECK (review2_presentation BETWEEN 0 AND 15),
    ->     review2_report INT CHECK (review2_report BETWEEN 0 AND 15),
    ->
    ->     -- Total & percentage (optional, can compute later)
    ->     total_marks INT,
    ->     percentage DECIMAL(5,2),
    ->
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> describe project_evaluation;
ERROR 1146 (42S02): Table 'project_evaluation.project_evaluation' doesn't exist
mysql> describe phase1_evaluations;
+------------------------+--------------+------+-----+-------------------+-------------------+
| Field                  | Type         | Null | Key | Default           | Extra             |
+------------------------+--------------+------+-----+-------------------+-------------------+
| id                     | int          | NO   | PRI | NULL              | auto_increment    |
| student_id             | varchar(20)  | NO   |     | NULL              |                   |
| student_name           | varchar(100) | NO   |     | NULL              |                   |
| class_name             | varchar(50)  | YES  |     | NULL              |                   |
| review0_marks          | int          | YES  |     | NULL              |                   |
| review1_marks          | int          | YES  |     | NULL              |                   |
| review2_design         | int          | YES  |     | NULL              |                   |
| review2_implementation | int          | YES  |     | NULL              |                   |
| review2_presentation   | int          | YES  |     | NULL              |                   |
| review2_report         | int          | YES  |     | NULL              |                   |
| total_marks            | int          | YES  |     | NULL              |                   |
| percentage             | decimal(5,2) | YES  |     | NULL              |                   |
| created_at             | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------------------+--------------+------+-----+-------------------+-------------------+
13 rows in set (0.01 sec)

mysql> drop table phase1_evaluations;
Query OK, 0 rows affected (0.07 sec)

mysql> CREATE TABLE phase1_evaluations (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id VARCHAR(20) NOT NULL,
    ->     student_name VARCHAR(100) NOT NULL,
    ->     class_name VARCHAR(50),
    ->
    ->     review0_marks INT CHECK (review0_marks BETWEEN 0 AND 20),
    ->     review1_marks INT CHECK (review1_marks BETWEEN 0 AND 20),
    ->
    ->     review2_design INT CHECK (review2_design BETWEEN 0 AND 15),
    ->     review2_implementation INT CHECK (review2_implementation BETWEEN 0 AND 15),
    ->     review2_presentation INT CHECK (review2_presentation BETWEEN 0 AND 15),
    ->     review2_report INT CHECK (review2_report BETWEEN 0 AND 15),
    ->
    ->     total_marks INT,
    ->     percentage DECIMAL(5,2),
    ->
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> describe phase1_evaluations;
+------------------------+--------------+------+-----+-------------------+-------------------+
| Field                  | Type         | Null | Key | Default           | Extra             |
+------------------------+--------------+------+-----+-------------------+-------------------+
| id                     | int          | NO   | PRI | NULL              | auto_increment    |
| student_id             | varchar(20)  | NO   |     | NULL              |                   |
| student_name           | varchar(100) | NO   |     | NULL              |                   |
| class_name             | varchar(50)  | YES  |     | NULL              |                   |
| review0_marks          | int          | YES  |     | NULL              |                   |
| review1_marks          | int          | YES  |     | NULL              |                   |
| review2_design         | int          | YES  |     | NULL              |                   |
| review2_implementation | int          | YES  |     | NULL              |                   |
| review2_presentation   | int          | YES  |     | NULL              |                   |
| review2_report         | int          | YES  |     | NULL              |                   |
| total_marks            | int          | YES  |     | NULL              |                   |
| percentage             | decimal(5,2) | YES  |     | NULL              |                   |
| created_at             | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------------------+--------------+------+-----+-------------------+-------------------+
13 rows in set (0.00 sec)

mysql> select * from phase1_evaluations;
Empty set (0.00 sec)

mysql> create table review0_evaluation(
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id VARCHAR(20) NOT NULL,
    ->     student_name VARCHAR(100) NOT NULL,
    ->     class_name VARCHAR(50),
    ->
    ->     domain_problem_identification INT CHECK (domain_problem_identification BETWEEN 0 AND 20),
    ->
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> describe review0_evaluation;
+-------------------------------+--------------+------+-----+-------------------+-------------------+
| Field                         | Type         | Null | Key | Default           | Extra             |
+-------------------------------+--------------+------+-----+-------------------+-------------------+
| id                            | int          | NO   | PRI | NULL              | auto_increment    |
| student_id                    | varchar(20)  | NO   |     | NULL              |                   |
| student_name                  | varchar(100) | NO   |     | NULL              |                   |
| class_name                    | varchar(50)  | YES  |     | NULL              |                   |
| domain_problem_identification | int          | YES  |     | NULL              |                   |
| created_at                    | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------------------------------+--------------+------+-----+-------------------+-------------------+
6 rows in set (0.00 sec)

mysql> select * from review0_evaluation;
Empty set (0.02 sec)

mysql> select * from review0_evaluation;
Empty set (0.00 sec)

mysql> select * from review0_evaluation;
Empty set (0.00 sec)

mysql> use mydb;
Database changed
mysql> create table review0_evaluation(
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id VARCHAR(20) NOT NULL,
    ->     student_name VARCHAR(100) NOT NULL,
    ->     class_name VARCHAR(50),
    ->     domain_problem_identification INT (domian_problem_identification BETWEEN 0 AND 20),
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'domian_problem_identification BETWEEN 0 AND 20),
    created_at TIMESTAMP DEFAUL' at line 6
mysql> create table review0_evaluation(
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id VARCHAR(20) NOT NULL,
    ->     student_name VARCHAR(100) NOT NULL,
    ->     class_name VARCHAR(50),
    ->     domain_problem_identification INT CHECK (domain_problem_identification BETWEEN 0 AND 20),
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> describe review0_evaluation;
+-------------------------------+--------------+------+-----+-------------------+-------------------+
| Field                         | Type         | Null | Key | Default           | Extra             |
+-------------------------------+--------------+------+-----+-------------------+-------------------+
| id                            | int          | NO   | PRI | NULL              | auto_increment    |
| student_id                    | varchar(20)  | NO   |     | NULL              |                   |
| student_name                  | varchar(100) | NO   |     | NULL              |                   |
| class_name                    | varchar(50)  | YES  |     | NULL              |                   |
| domain_problem_identification | int          | YES  |     | NULL              |                   |
| created_at                    | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------------------------------+--------------+------+-----+-------------------+-------------------+
6 rows in set (0.00 sec)

mysql> select * from review0_evaluation;
Empty set (0.00 sec)

mysql> create table users;
ERROR 1050 (42S01): Table 'users' already exists
mysql> drop users;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'users' at line 1
mysql> drop table users;
Query OK, 0 rows affected (0.02 sec)

mysql> create table users;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table users(
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    ->     email VARCHAR(100) NOT NULL UNIQUE,
    ->     password VARCHAR(100) NOT NULL,
    ->     role ENUM('faculty', 'student') NOT NULL
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql>
mysql> -- Insert sample faculty and student logins
mysql> INSERT INTO users (email, password, role) VALUES
    -> ('faculty@christ.com', 'faculty123', 'faculty'),
    -> ('student@christ.com', 'student123', 'student');
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from users;
+----+--------------------+------------+---------+
| id | email              | password   | role    |
+----+--------------------+------------+---------+
|  1 | faculty@christ.com | faculty123 | faculty |
|  2 | student@christ.com | student123 | student |
+----+--------------------+------------+---------+
2 rows in set (0.00 sec)

mysql> select * from review0_evaluation;
+----+------------+--------------+------------+-------------------------------+---------------------+
| id | student_id | student_name | class_name | domain_problem_identification | created_at          |
+----+------------+--------------+------------+-------------------------------+---------------------+
|  1 | 2360357    | Neha         | 5BTCSA     |                            18 | 2025-09-09 23:32:55 |
|  2 | 2360412    | Manisha      | 5BTCSC     |                            15 | 2025-09-09 23:32:55 |
+----+------------+--------------+------------+-------------------------------+---------------------+
2 rows in set (0.00 sec)

mysql> select * from review0_submissions;
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
| id | student_id | student_name | class_name | objective | implementation | tools    | presentation_status | completion_status | final_status | file_path | submitted_at        |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
|  1 | 2360357    | neha         | 5btcs a    | kdjik     | ksefnkw        | ewrnjfns | yes                 | no                | finish       | NULL      | 2025-09-09 15:40:03 |
|  2 | 2360412    | manisha      | 5btcsc     | ekuf      | jfch           | jda      | jewh                | jrek              | erkj         | NULL      | 2025-09-09 15:41:15 |
|  3 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:38:33 |
|  4 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:38:48 |
|  5 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:38:55 |
|  6 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:39:43 |
|  7 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:40:18 |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
7 rows in set (0.00 sec)

mysql> select * from review0_submissions;
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
| id | student_id | student_name | class_name | objective | implementation | tools    | presentation_status | completion_status | final_status | file_path | submitted_at        |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
|  1 | 2360357    | neha         | 5btcs a    | kdjik     | ksefnkw        | ewrnjfns | yes                 | no                | finish       | NULL      | 2025-09-09 15:40:03 |
|  2 | 2360412    | manisha      | 5btcsc     | ekuf      | jfch           | jda      | jewh                | jrek              | erkj         | NULL      | 2025-09-09 15:41:15 |
|  3 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:38:33 |
|  4 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:38:48 |
|  5 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:38:55 |
|  6 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:39:43 |
|  7 | NULL       | NULL         | NULL       | NULL      | NULL           | NULL     | NULL                | NULL              | NULL         | NULL      | 2025-09-09 19:40:18 |
+----+------------+--------------+------------+-----------+----------------+----------+---------------------+-------------------+--------------+-----------+---------------------+
7 rows in set (0.03 sec)

mysql>