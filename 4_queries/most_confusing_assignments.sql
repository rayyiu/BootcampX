--We need to know which assignments are causing the most assistance requests.
--List each assignment with the total number of assistance requests with it.
--Select the assignment's id, day, chapter, name and the total assistances.
--Order by total assistances in order of most to least.

SELECT id, day, chapter, name, assistance_requests_id as assignments_assistance_requests
FROM assignments 
JOIN assistance_requests on assignment_id = assistance_requests.id
GROUP BY assignments.id
ORDER BY assignments_assistance_requests;