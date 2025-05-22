SELECT
  -- turn “NA” (or NULL) into real NULL
  CASE
    WHEN profit_loss_fy22 IS NULL
      OR profit_loss_fy22 = 'NA'
    THEN 0
    ELSE
      -- 1) strip out everything but -, digits and “.”
      --    e.g. “-$47.1 Million” → “-47.1”
      (regexp_replace(profit_loss_fy22, '[^\d\.-]', '', 'g')::numeric)
      *
      -- 2) multiply by million / billion / trillion
      CASE
        WHEN profit_loss_fy22 ILIKE '%trillion' THEN 1e12
        WHEN profit_loss_fy22 ILIKE '%billion'  THEN 1e9
        WHEN profit_loss_fy22 ILIKE '%million'  THEN 1e6
        ELSE 1
      END
  END AS profit_loss_fy22_numeric
FROM unicorn_startups;

---- Permament updating the table

ALTER TABLE unicorn_startups
  ADD COLUMN profit_loss_fy22_num numeric;

UPDATE unicorn_startups
SET profit_loss_fy22_num =
  CASE
    WHEN profit_loss_fy22 IS NULL
      OR profit_loss_fy22 = 'NA'
    THEN 0
    ELSE
      regexp_replace(profit_loss_fy22, '[^\d\.-]', '', 'g')::numeric
      *
      CASE
        WHEN profit_loss_fy22 ILIKE '%trillion' THEN 1e12
        WHEN profit_loss_fy22 ILIKE '%billion'  THEN 1e9
        WHEN profit_loss_fy22 ILIKE '%million'  THEN 1e6
        ELSE 1
      END
  END;


--May Drop the old column if no longer needed


