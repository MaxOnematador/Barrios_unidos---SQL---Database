-- Consulta de Poblacion entre las tablas de Poblacion de las bases de datos de Peru y Colombia partiendo de referencia al ID

USE DATA_PERU;

SELECT 
    pd.Poblacion_Total AS Total_Poblacion_DistritalPeru,
    pd.Poblacion_Hombres AS Hombres_DistritalPeru,
    pd.Poblacion_Mujeres AS Mujeres_DistritalPeru,
    pn.Población_Total AS Total_Poblacion_BarrioUnidos,
    pn.Población_Hombres AS Hombres_BarrioUnidos,
    pn.Población_Mujeres AS Mujeres_BarrioUnidos
FROM 
    DATA_PERU.dbo.PoblacionDistrital AS pd
JOIN 
    Barrios_Unidos.dbo.tb_poblacionneta AS pn 
ON 
    pd.ID = pn.id_poblacion;

