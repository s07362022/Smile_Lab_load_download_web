CREATE DATABASE harden_web_micor;

USE harden_web_micor;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    `key` VARCHAR(255) NOT NULL
);

CREATE TABLE files (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    path VARCHAR(255) NOT NULL
);

CREATE TABLE classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    folder VARCHAR(100) NOT NULL
);

CREATE TABLE upload_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    class VARCHAR(50),
    file_count INT,
    filenames JSON,
    timestamp DATETIME
);

CREATE TABLE download_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    `key` VARCHAR(255),
    filename VARCHAR(255),
    timestamp DATETIME
);

CREATE TABLE user_serials (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    serial_number VARCHAR(255) NOT NULL,
    encrypted_serial VARCHAR(255) NOT NULL
);

select * from download_logs;
select * from upload_logs;
select * from files;
select * from user_serials;
DROP TABLE user_serials;
