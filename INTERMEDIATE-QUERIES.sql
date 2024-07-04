-- Students registered in Course 'Guitarra Básico'
SELECT s.first_name, s.last_name, c.name
FROM Students as s
JOIN Registrations as r ON s.id_student = r.id_student
JOIN Courses as c ON r.id_course = c.id_course
WHERE c.name = "Guitarra Básico"
;

-- Get students and their courses that they are registered
SELECT s.first_name as Nombre, s.last_name as Apellido, c.name as Curso
FROM Students as s
JOIN Registrations as r ON s.id_student = r.id_student
JOIN Courses as c ON r.id_course = c.id_course
;

-- Select students that have more than 1 Course (working with sub queries)
SELECT first_name, last_name
FROM Students
WHERE id_student IN (
    SELECT id_student
    FROM Registrations
    GROUP BY id_student
    HAVING COUNT(id_course) > 1
);

-- Select Course name and how many students do it have
SELECT c.name as Course, COUNT(r.id_student) as Students
FROM Courses as c
JOIN Registrations as r ON r.id_course = c.id_course
GROUP BY c.name;

-- Select students for Registrations that have not been paid
SELECT s.first_name, s.last_name, c.name
FROM Students as s
JOIN Registrations as r ON r.id_student = s.id_student
JOIN Courses as c ON r.id_course = c.id_course
WHERE r.is_paid=FALSE;


-- Select course name that have students older than 18
SELECT DISTINCT c.name as "Courses with adult students"
FROM Courses as c
JOIN Registrations as r ON c.id_course = r.id_course
JOIN Students as s ON s.id_student = r.id_student
WHERE DATEDIFF (CURDATE(), s.birth_date) / 365 > 18;

-- Select students first_name, last_name and their courses that have been registered in 2023
SELECT s.first_name as Name, s.last_name as LastName, c.name as "Course 2023"
FROM Students as s
JOIN Registrations as r ON r.id_student = s.id_student
JOIN Courses as c ON c.id_course = r.id_course
WHERE YEAR(r.date) = 2023
