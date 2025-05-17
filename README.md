# Indian Unicorn Startup Dataset

## Overview
Tracking unicorn startups (valued at $1B+) provides valuable insights for investors and analysts to identify high-growth industries and emerging trends. This repository contains the **Indian Unicorn Startup Dataset**, a comprehensive dataset of Indian unicorn companies, including details such as company name, valuation, founding year, industry, and unicorn entry year. The dataset is designed for analysis using a PostgreSQL-compatible database, enabling complex SQL queries to uncover patterns and trends in the unicorn ecosystem.

## Dataset Description
The **Indian Unicorn Startup Dataset** (`Unicorn Startups.csv`) contains information about Indian startups that have achieved unicorn status (valuation of $1 billion or more). The dataset includes the following columns:

- **STARTUP NAME**: The name of the startup (e.g., `Perfios`, `Krutrim`).
- **INDUSTRY**: The industry or sector the startup operates in (e.g., `SaaS (Fintech)`, `Edtech`).
- **FOUNDING YEAR**: The year the startup was founded (e.g., `2008`, `2023`).
- **UNICORN ENTRY YEAR**: The year the startup achieved unicorn status (e.g., `2024`, `2022`).
- **PROFIT/LOSS FY22**: The profit or loss for the fiscal year 2022, in millions or billions (e.g., `$0.94 Million`, `-$47.1 Million`, `NA`).
- **CURRENT VALUATION**: The current valuation of the startup, in billions or millions (e.g., `$1 Billion`, `$0.568 Billion`, `NA`).
- **ACQUISITIONS**: The number of acquisitions made by the startup (e.g., `3`, `0`, `NA`).
- **STATUS**: The current status of the startup (e.g., `Private`, `Acquired`, `Listed`, `IPO-Bound`).

### Data Notes
- The `PROFIT/LOSS FY22`, `CURRENT VALUATION`, and `ACQUISITIONS` columns may contain "NA" for missing data.
- Monetary values in `PROFIT/LOSS FY22` and `CURRENT VALUATION` are stored as text (e.g., `$1 Billion`, `-$47.1 Million`) and may require parsing for numerical analysis.
- The dataset focuses on Indian startups, but the `readme.md` assumes country information is included (though not present in the provided CSV). For analysis, you may assume all startups are from India or extend the dataset to include a `COUNTRY` column.

## SQL Project Idea
This dataset is ideal for building a PostgreSQL-compatible database to perform advanced data analysis using complex SQL queries. The following project objectives can help uncover trends in the Indian unicorn startup ecosystem:

### Analysis Questions
1. **How many unicorns were born each year across industries?**
   - Use `GROUP BY` on `UNICORN ENTRY YEAR` and `INDUSTRY` to count the number of unicorns per year and industry.
2. **Which three industries produced the most unicorns in the past decade?**
   - Filter for `UNICORN ENTRY YEAR` within the last 10 years (e.g., 2015–2024), group by `INDUSTRY`, and use `COUNT` to identify the top three industries.
3. **What is the average valuation by industry and year?**
   - Parse `CURRENT VALUATION` to numeric values (e.g., convert `$1 Billion` to `1000` million) and use `AVG()` with `GROUP BY` on `INDUSTRY` and `UNICORN ENTRY YEAR`.
4. **What’s the distribution of unicorns by country and industry?**
   - Assuming a `COUNTRY` column (or all startups are Indian), use `GROUP BY` on `COUNTRY` and `INDUSTRY` to show the distribution of unicorns.
5. **Which year saw the most unicorns created globally?**
   - Group by `UNICORN ENTRY YEAR` and use `COUNT` to find the year with the highest number of unicorns. (Note: The dataset is India-focused, so this may reflect Indian unicorns unless extended.)

### SQL Table Creation
To prepare the dataset for analysis, create a PostgreSQL table with the following schema:

```sql
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
```

### Importing the Dataset
1. Save the `Unicorn Startups.csv` file to your local machine.
2. In pgAdmin:
   - Right-click the `unicorn_startups` table, select "Import/Export Data".
   - Choose "Import", select the CSV file, and set:
     - Format: CSV
     - Header: Enabled
     - Delimiter: Comma (`,`)
     - Quote: Double Quote (`"`)
     - Encoding: UTF8
   - Click "OK" to import.
3. Alternatively, use the `\copy` command in `psql`:
   ```sql
   \copy unicorn_startups FROM '/path/to/Unicorn Startups.csv' DELIMITER ',' CSV HEADER;
   ```

### Example SQL Queries
Here are sample queries to address the analysis questions:

1. **Unicorns by Year and Industry**:
   ```sql
   SELECT unicorn_entry_year, industry, COUNT(*) as unicorn_count
   FROM unicorn_startups
   GROUP BY unicorn_entry_year, industry
   ORDER BY unicorn_entry_year, unicorn_count DESC;
   ```

2. **Top Three Industries (Last Decade)**:
   ```sql
   SELECT industry, COUNT(*) as unicorn_count
   FROM unicorn_startups
   WHERE unicorn_entry_year >= EXTRACT(YEAR FROM CURRENT_DATE) - 10
   GROUP BY industry
   ORDER BY unicorn_count DESC
   LIMIT 3;
   ```

3. **Average Valuation by Industry and Year** (assuming valuation parsing):
   ```sql
   SELECT industry, unicorn_entry_year,
          AVG(CAST(REGEXP_REPLACE(current_valuation, '[^0-9.]', '') AS NUMERIC)) as avg_valuation_millions
   FROM unicorn_startups
   WHERE current_valuation != 'NA'
   GROUP BY industry, unicorn_entry_year
   ORDER BY unicorn_entry_year, industry;
   ```

4. **Distribution by Country and Industry** (assuming all are Indian):
   ```sql
   SELECT 'India' as country, industry, COUNT(*) as unicorn_count
   FROM unicorn_startups
   GROUP BY industry
   ORDER BY unicorn_count DESC;
   ```

5. **Year with Most Unicorns**:
   ```sql
   SELECT unicorn_entry_year, COUNT(*) as unicorn_count
   FROM unicorn_startups
   GROUP BY unicorn_entry_year
   ORDER BY unicorn_count DESC
   LIMIT 1;
   ```

## Getting Started
1. **Set Up PostgreSQL**:
   - Install PostgreSQL and pgAdmin on your system.
   - Create a database (e.g., `unicorn_db`) in pgAdmin.

2. **Create the Table**:
   - Copy the `CREATE TABLE` SQL code above into pgAdmin’s Query Tool and execute it.

3. **Import the Data**:
   - Follow the import steps outlined above to load `Unicorn Startups.csv` into the `unicorn_startups` table.

4. **Run Queries**:
   - Use the example queries or write your own to analyze the data.

## Potential Extensions
- **Add Country Data**: Extend the dataset to include a `COUNTRY` column for global analysis.
- **Parse Monetary Values**: Create views or new columns to convert `CURRENT VALUATION` and `PROFIT/LOSS FY22` into numeric values for easier aggregation.
- **Time-Based Analysis**: Use date functions to analyze trends over time, such as the average time from founding to unicorn status (`unicorn_entry_year - founding_year`).
- **Visualization**: Export query results to tools like Tableau or Python (e.g., Matplotlib) for visualizations.

## License
This dataset and repository are provided for educational and analytical purposes. Ensure compliance with any data usage restrictions if the dataset is sourced from a third party.

## Contact
For questions or contributions, please open an issue in this repository.
