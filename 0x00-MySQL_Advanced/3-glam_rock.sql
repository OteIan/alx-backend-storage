-- Lists bands
SELECT
    band_name,
    DATE_SUB(IFNULL(split, 2022), formed) AS lifespan
FROM
    metal_bands
ORDER BY
    lifespan;
