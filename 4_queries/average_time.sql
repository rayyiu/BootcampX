--Calculate the average time it takes to start an assistance request.
SELECT id, avg(started_at - created_at)
FROM assistance_requests;

