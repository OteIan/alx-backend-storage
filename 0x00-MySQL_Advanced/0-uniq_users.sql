-- Create a tabel users
CREATE TABLE IF NOT EXISTS users(
    ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email varchar(255) UNIQUE,
    NAME varchar(255)
);