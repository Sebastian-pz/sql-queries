-- Basic selects
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Registrations;


-- is_paid TRUE
SELECT COUNT(*)
FROM Registrations
WHERE is_paid=1;

-- Advanced courses
SELECT * FROM Courses WHERE course_level = 3;

-- Registrations before January 2024
SELECT * FROM Registrations WHERE date > "2024-01-01";