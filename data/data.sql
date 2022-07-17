USE lunapi;

CREATE TABLE IF NOT EXISTS categories (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    created DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS programs (  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    name VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_CategoryProgram FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE IF NOT EXISTS exercices (  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    repetitions INT DEFAULT 15,
    created DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS programs_exercices(
    program_id INT NOT NULL,
    exercice_id INT NOT NULL,
    CONSTRAINT FK_Program FOREIGN KEY (program_id) REFERENCES programs(id),
    CONSTRAINT FK_Exercice FOREIGN KEY (exercice_id) REFERENCES exercices(id)
);

CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idfv VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS users_token(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    token VARCHAR(255) NOT NULL,
    CONSTRAINT FK_users FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO categories (name) VALUES ('AMRAP'), ('RFT'), ('WOD');

INSERT INTO programs (category_id, name) VALUES 
    (1, 'AMRAP - Program 1'),
    (1, 'AMRAP - Program 2'),
    (1, 'AMRAP - Program 3'),
    (2, 'RFT - Program 1'),
    (2, 'RFT - Program 2'),
    (2, 'RFT - Program 3'),
    (3, 'WOD - Friday'),
    (3, 'WOD - Saturday'),
    (3, 'WOD - Sunday')
;

INSERT INTO exercices (name, repetitions) VALUES
    ('Hand Stand Push Up', 10),
    ('Box Jump', 15),
    ('Box Jump', 20),
    ('Burpees', 15),
    ('Deadlift', 5),
    ('Deadlift', 10),
    ('Burpees', 15),    
    ('Knee To Elbows', 10),
    ('Pumps', 10),
    ('Pumps', 15),
    ('Squats', 15),
    ('Squats', 20),
    ('Squats', 30)
;

INSERT INTO programs_exercices VALUES
    (1, 1),
    (1, 3),
    (1, 6),
    (2, 3),
    (2, 7),
    (2, 9),
    (3, 2),
    (3, 5),
    (3, 11),
    (3, 9),
    (4, 1),
    (4, 12),
    (4, 8),
    (5, 13),
    (5, 10),
    (5, 7),
    (6, 4),
    (6, 2),
    (6, 3),
    (7, 8),
    (7, 1),
    (7, 9),
    (8, 12),
    (8, 6),
    (8, 3),
    (9, 9),
    (9, 11),
    (9, 5)
;