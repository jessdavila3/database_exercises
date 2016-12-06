use codeup_test_db;

drop table if exists albums;

CREATE TABLE albums(id INT AUTO_INCREMENT PRIMARY KEY ,artist VARCHAR(100), name VARCHAR(100),release_date YEAR,sales FLOAT, genre VARCHAR(100));

