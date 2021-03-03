SELECT name, count(students.*) as total_students, as students_in_cohort
FROM cohorts
JOIN students ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING COUNT(*) >= 10
ORDER BY total_students;