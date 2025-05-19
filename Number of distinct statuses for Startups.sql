---SELECT * from unicorn_startups
--- The number of distinct status for Startups
SELECT DISTINCT status AS number_of_status, count(startup_name) AS number_of_startups FROM unicorn_startups
GROUP BY number_of_status
ORDER BY number_of_startups DESC;
 