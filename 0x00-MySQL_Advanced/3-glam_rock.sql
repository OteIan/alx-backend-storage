-- Lists bands
SELECT band_name, DATE_SUB(split DEFAULT 2022, formed) AS lifespan FROM metal_bands
GROUP BY band_name
ORDER BY lifespan;
