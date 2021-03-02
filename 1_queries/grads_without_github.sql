SELECT name, email, phone 
FOR students
WHERE github is NULL
AND end_date IS NOT NULL;