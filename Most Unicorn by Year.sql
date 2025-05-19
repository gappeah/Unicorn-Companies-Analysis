----Year with Most Unicorns:



---SELECT * FROM unicorn_startups

SELECT unicorn_entry_year, count(startup_name) as number_of_startups FROM unicorn_startups
GROUP BY unicorn_entry_year
ORDER BY number_of_startups DESC;