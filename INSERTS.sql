INSERT INTO Students (
    last_name,
    first_name,
    birth_date,
    address,
    email
) VALUES (
    "Garcia",
    "Ana",
    "2001-07-10",
    "Medellín, Antioquia",
    "garcia_ana10@gmail.com"
);

INSERT INTO Students (
    last_name,
    first_name,
    birth_date,
    address,
    email
) VALUES (
    'Pérez',
    'Juan',
    '2001-08-22',
    'Av. Principal 45',
    'juan.perez@example.com'
);

INSERT INTO Students (
    last_name,
    first_name,
    birth_date,
    address,
    email
) VALUES (
    'Rodríguez',
    'María',
    '2000-11-09',
    'Plaza de la Iglesia 3',
    'maria.rodriguez@test.net'
);

-- You can also use INSERT INTO Students (...) VALUES (student1), (student2), (student3); 
-- It's a better way to insert many

INSERT INTO Courses (name, instrument_type, course_level) 
VALUES 
    ('Guitarra Básico', 'Guitarra', 1),
    ('Guitarra Intermedio', 'Guitarra', 2),
    ('Guitarra Avanzado', 'Guitarra', 3)
;

INSERT INTO Courses (name, instrument_type, course_level) 
VALUES 
    ('Piano Básico', 'Piano', 1),
    ('Piano Intermedio', 'Piano', 2),
    ('Piano Avanzado', 'Piano', 3)
;

INSERT INTO Courses (name, instrument_type, course_level) 
VALUES 
    ('Violín Básico', 'Violín', 1),
    ('Violín Intermedio', 'Violín', 2),
    ('Violín Avanzado', 'Violín', 3)
;

INSERT INTO Registrations (
    is_paid,
    date,
    id_student,
    id_course
) VALUES 
    (FALSE, "2024-07-04", 1, 1),
    (TRUE, "2024-07-04", 1, 4),
    (TRUE, "2024-07-04", 1, 7)
;

INSERT INTO Registrations (
    is_paid,
    date,
    id_student,
    id_course
) VALUES 
    (FALSE, "2023-07-04", 2, 2),
    (TRUE, "2024-07-04", 2, 5),
    (TRUE, "2024-07-04", 2, 9)
;
