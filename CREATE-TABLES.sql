CREATE TABLE Students (
    id_student INT PRIMARY KEY AUTO_INCREMENT,
    last_name VARCHAR(35),
    first_name VARCHAR(35),
    birth_date DATE,
    address VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE Courses (
    id_course INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    instrument_type VARCHAR(20),
    course_level INT
);

CREATE TABLE Registrations (
    id_registration INT PRIMARY KEY AUTO_INCREMENT,
    is_paid BOOL,
    date DATE,
    id_student INT,
    id_course INT,
    FOREIGN KEY (id_student) REFERENCES Students(id_student) ON DELETE Cascade,
    FOREIGN KEY (id_course) REFERENCES Courses(id_course) ON DELETE Cascade
);