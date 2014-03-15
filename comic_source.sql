BEGIN;
CREATE DATABASE comic_source;
USE comic_source;
CREATE TABLE K_ON (id int, charactors text, sources text, band text, title text);
LOAD DATA INFILE "/PATH/TO/k-on.csv" INTO TABLE K_ON FIELDS TERMINATED BY ',';
COMMIT;
