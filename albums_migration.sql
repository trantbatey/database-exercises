/*
    This is the seeder script for loading data from the wiki page for best selling albums
*/

-- if it does not exist, create the 'test' database
CREATE DATABASE IF NOT EXISTS codeup_test_db;

use codeup_test_db;

-- Drop the 'product' table if it exists
DROP TABLE IF EXISTS albums;

-- Create the 'albums' table
CREATE TABLE albums (
                        album_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(80) NOT NULL,
                        album VARCHAR(80),
                        released CHAR(4),
                        genre VARCHAR(40),
                        total_certified_copies DECIMAL(4,1),
                        claimed_sales INT,
                        refs VARCHAR(12),
                        PRIMARY KEY (album_id),
                        CONSTRAINT uc_album UNIQUE (artist, album)
);

-- add a row of data
INSERT INTO albums (artist, album, released, genre, total_certified_copies, claimed_sales, refs)
values ('Eagles', 'Hotel California', '1978', 'rock', 301.1, 300100000, 'BR%$(');