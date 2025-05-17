CREATE TABLE unicorn_startups (
    startup_name VARCHAR(100),
    industry VARCHAR(100),
    founding_year INTEGER,
    unicorn_entry_year INTEGER,
    profit_loss_fy22 VARCHAR(50),
    current_valuation VARCHAR(50),
    acquisitions VARCHAR(10),
    status VARCHAR(50)
);

SELECT * FROM unicorn_startups;