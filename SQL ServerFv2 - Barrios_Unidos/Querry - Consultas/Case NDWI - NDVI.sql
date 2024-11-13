-- NDWI
SELECT 
    id_indices AS id,           
    NDWI,
    CASE 
        WHEN NDWI < 0 THEN 'Terreno seco'
        WHEN NDWI >= 0 AND NDWI < 0.2 THEN 'Humedad baja'
        WHEN NDWI >= 0.2 AND NDWI < 0.5 THEN 'Presencia moderada de agua'
        WHEN NDWI >= 0.5 AND NDWI < 0.7 THEN 'Presencia significativa de agua (óptimo)'
        WHEN NDWI >= 0.7 THEN 'Cuerpos de agua grandes (óptimo)'
    END AS estado_ndwi
FROM 
    tb_indices_unificada;

-- NDVI

SELECT 
    id_indices AS id,           -- Cambié 'id' a 'id_indices' para hacer referencia correctamente
    NDVI,
    CASE 
        WHEN NDVI < 0 THEN 'No vegetación'
        WHEN NDVI >= 0 AND NDVI < 0.2 THEN 'Vegetación escasa'
        WHEN NDVI >= 0.2 AND NDVI < 0.5 THEN 'Vegetación moderada'
        WHEN NDVI >= 0.5 AND NDVI < 0.7 THEN 'Vegetación densa (óptimo)'
        WHEN NDVI >= 0.7 THEN 'Vegetación muy densa (óptimo)'
    END AS estado_ndvi
FROM 
    tb_indices_unificada;


