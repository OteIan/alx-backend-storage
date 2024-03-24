-- Lists bands
SELECT
    band_name,
    IFNULL(split, 2022) - formed AS lifespan
FROM
    metal_bands
ORDER BY
    lifespan DESC;
