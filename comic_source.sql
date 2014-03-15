BEGIN;
CREATE DATABASE COMIC_SOURCE;
CREATE TABLE K_ON (id int auto_increment, charactors text, sources text, band text, title text);
LOAD DATA INFILE "/Users/shige/junk/2014/03/k-on.csv" INTO TABLE K_ON FIELDS TERMINATED BY ',';
COMMIT;
