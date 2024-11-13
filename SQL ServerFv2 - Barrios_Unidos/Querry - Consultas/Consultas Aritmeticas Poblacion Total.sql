
-- Porcentajes de Hombres y Mujeres 
SELECT 
    Año,
    Población_Total,
    Población_Hombres,
    Población_Mujeres,
    (Población_Hombres / Población_Total) * 100 AS Porcentaje_Hombres,
    (Población_Mujeres / Población_Total) * 100 AS Porcentaje_Mujeres
FROM 
    tb_poblacionneta;

-- Promedio de la tasa de crecimiento 
SELECT 
    AVG(Tasa_de_Crecimiento_Poblacional) AS Promedio_Tasa_Crecimiento
FROM 
    tb_poblacionneta;
    
-- Crecimiento de la poblacion en años

SELECT 
    SUM(Población_Total) AS Crecimiento_Total
FROM 
    tb_poblacionneta
WHERE 
    Año BETWEEN 2005 AND 2015;

-- Tasa de Crecimiento Positiva
SELECT 
    Año,
    Tasa_de_Crecimiento_Poblacional
FROM 
    tb_poblacionneta
WHERE 
    Tasa_de_Crecimiento_Poblacional >= 1;
