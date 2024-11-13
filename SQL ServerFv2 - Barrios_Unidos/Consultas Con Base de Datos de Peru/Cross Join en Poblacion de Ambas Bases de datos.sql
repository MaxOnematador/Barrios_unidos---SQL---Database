USE DATA_PERU;

-- Cross Join unicamente de las columnas de poblacion
SELECT 
    pd.Poblacion_Total AS Total_Poblacion_DistritalPeru,
    pd.Poblacion_Hombres AS Hombres_DistritalPeru,
    pd.Poblacion_Mujeres AS Mujeres_DistritalPeru,
    pn.Población_Total AS Total_Poblacion_BarrioUnidos,
    pn.Población_Hombres AS Hombres_BarrioUnidos,
    pn.Población_Mujeres AS Mujeres_BarrioUnidos
FROM 
    DATA_PERU.dbo.PoblacionDistrital AS pd
CROSS JOIN 
    Barrios_Unidos.dbo.tb_poblacionneta AS pn;


-- Cross Join de todas las columnas de la tabla 
USE DATA_PERU;
SELECT *
FROM 
    DATA_PERU.dbo.PoblacionDistrital AS pd
CROSS JOIN 
    Barrios_Unidos.dbo.tb_poblacionneta AS pn;
-- Al no tener un atributo de Barrios_Unidos en la tabla de poblacionneta, se tiene que partir que pareciera que todas las tablas pertenec
-- cieran al distrito de Villa El Salvador en Peru.

