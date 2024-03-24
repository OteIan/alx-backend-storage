-- Lists bands
SELECT
    band_name,
    CONCAT(formed, "-", IFNULL(split, 2022)) AS lifespan
FROM
    metal_bands
ORDER BY
    lifespan;
