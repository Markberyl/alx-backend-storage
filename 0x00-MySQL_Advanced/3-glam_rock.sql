SELECT
    band_name,
    CASE
        WHEN formed = 0 THEN 0
        ELSE IF(splits = 0, 2022 - formed, splits - formed)
    END AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY lifespan DESC;

