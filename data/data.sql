USE lunapi;

CREATE TABLE categories (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE programs (  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    name VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_CategoryProgram FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE exercices (  
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    program_id INT,
    name VARCHAR(50) NOT NULL,
    repetitions INT DEFAULT 15,
    created DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_ProgramExercice FOREIGN KEY (program_id) REFERENCES programs(id)
);