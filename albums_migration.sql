CREATE DATABASE IF NOT EXISTS redwood_test_db;
USE redwood_test_db;
DROP TABLE IF EXISTS albums;

-- Create an albums table with the following columns:
CREATE TABLE IF NOT EXISTS albums (
-- id — auto incrementing unsigned integer primary key
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
-- artist — string for storing the recording artist name
artist VARCHAR(200) NOT NULL,
-- name — string for storing a record name
name VARCHAR(300) NOT NULL,
-- release_date — integer representing year record was released
release_date INT(4) NOT NULL,
-- sales — floating point value for number of records sold (in millions)
sales DECIMAL(10, 2) NOT NULL,
-- genre — string for storing the record's genre(s)
genre VARCHAR(50) NOT NULL,

PRIMARY KEY (id)
);
-- # not null means required
