
SELECT 'India' as country, industry, COUNT(*) as unicorn_count
FROM unicorn_startups
GROUP BY industry
ORDER BY unicorn_count DESC;