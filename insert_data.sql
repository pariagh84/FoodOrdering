USE menu_db;

INSERT INTO human (full_name, national_id) VALUES
                                               ('Alice Johnson', '1234567890'),
                                               ('Bob Smith', '0987654321'),
                                               ('Charlie Brown', '1111222233');

INSERT INTO student (human_id, student_number, major) VALUES
                                                          (1, 20230001, 'Software Engineering'),
                                                          (3, 20230002, 'Computer Science');

INSERT INTO professor (human_id, personnel_id, department, academic_rank) VALUES
    (2, 987654, 'Mathematics', 'Associate Professor');

INSERT INTO food (name, price) VALUES
                                   ('Grilled Chicken', 8.50),
                                   ('Beef Burger', 7.25),
                                   ('Vegetarian Pasta', 6.75);

INSERT INTO daily_menu (menu_date, food_id) VALUES
                                                ('2025-05-20', 1),
                                                ('2025-05-20', 2),
                                                ('2025-05-21', 3);

INSERT INTO orders (human_id, order_date) VALUES
                                              (1, '2025-05-20'),
                                              (2, '2025-05-20');

INSERT INTO order_items (order_id, food_id) VALUES
                                                (1, 1),
                                                (1, 2),
                                                (2, 2);
