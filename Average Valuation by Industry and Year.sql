----converting my varchar in the current valuation into numbers

SELECT 
    CASE 
        WHEN current_valuation = 'NA' OR current_valuation IS NULL THEN NULL
        ELSE 
            CAST(
                substring(current_valuation FROM '\$([0-9.]+)') AS NUMERIC
            ) * 
            CASE 
                WHEN current_valuation LIKE '%Billion' THEN 1000000000
                WHEN current_valuation LIKE '%Million' THEN 1000000
                WHEN current_valuation LIKE '%Trillion' THEN 1000000000000
                ELSE 1
            END
    END AS current_numeric_valuation
FROM unicorn_startups;

---- Permament updating the table
ALTER TABLE unicorn_startups ADD COLUMN current_numeric_valuation NUMERIC;

UPDATE unicorn_startups 
SET current_numeric_valuation = 
    CASE 
        WHEN current_valuation = 'NA' OR current_valuation IS NULL THEN NULL
        ELSE 
            CAST(
                substring(current_valuation FROM '\$([0-9.]+)') AS NUMERIC
            ) * 
            CASE 
                WHEN current_valuation LIKE '%Billion' THEN 1000000000
                WHEN current_valuation LIKE '%Million' THEN 1000000
                WHEN current_valuation LIKE '%Trillion' THEN 1000000000000
                ELSE 1
            END
    END;

--May Drop the old column if no longer needed

SELECT industry, unicorn_entry_year,
       round(AVG(current_numeric_valuation), 0) as avg_valuation
FROM unicorn_startups
WHERE current_numeric_valuation IS NOT NULL
GROUP BY industry, unicorn_entry_year
ORDER BY unicorn_entry_year, industry;


