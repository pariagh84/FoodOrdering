CREATE DATABASE IF NOT EXISTS menu_db;
USE menu_db;

CREATE TABLE human (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       full_name NVARCHAR(100) NOT NULL,
                       national_id NVARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE student (
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         human_id INT UNIQUE,
                         student_number INT UNIQUE NOT NULL,
                         major NVARCHAR(50),
                         FOREIGN KEY (human_id) REFERENCES human(id)
);

CREATE TABLE professor (
                           id INT PRIMARY KEY AUTO_INCREMENT,
                           human_id INT UNIQUE,
                           personnel_id INT UNIQUE NOT NULL,
                           department NVARCHAR(50),
                           academic_rank NVARCHAR(50) DEFAULT 'No Rank',
                           FOREIGN KEY (human_id) REFERENCES human(id)
);

CREATE TABLE food (
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      name NVARCHAR(100) NOT NULL,
                      price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE daily_menu (
                            id INT PRIMARY KEY AUTO_INCREMENT,
                            menu_date DATE NOT NULL,
                            food_id INT NOT NULL,
                            FOREIGN KEY (food_id) REFERENCES food(id)
);

CREATE TABLE orders (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        human_id INT NOT NULL,
                        order_date DATE NOT NULL,
                        FOREIGN KEY (human_id) REFERENCES human(id)
);

CREATE TABLE order_items (
                             order_id INT,
                             food_id INT,
                             PRIMARY KEY (order_id, food_id),
                             FOREIGN KEY (order_id) REFERENCES orders(id),
                             FOREIGN KEY (food_id) REFERENCES food(id)
);
