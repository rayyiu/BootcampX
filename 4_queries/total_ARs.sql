--select teacher name and total assistance request
--use waylon bohem
SELECT COUNT (assistance_requests.*) AS total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Bohem'
GROUP BY teachers.name;


