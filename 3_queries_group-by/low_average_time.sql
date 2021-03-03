SELECT students.name as student, avg(assignment_submissions.duration) as student_average, avg(assignments.duration) as average_completion
FROM students
JOIN assignment_submissions on students.id = student_id
JOIN assignments on assignment_id = assignments.id
WHERE end_date is NULL
GROUP BY student 
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_completion;