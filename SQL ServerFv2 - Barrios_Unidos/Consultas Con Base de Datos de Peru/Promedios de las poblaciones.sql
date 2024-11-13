USE DATA_PERU;

SELECT 
    pd.Poblacion_Total AS Total_Poblacion_DistritalPeru,
    pd.Poblacion_Hombres AS Hombres_DistritalPeru,
    pd.Poblacion_Mujeres AS Mujeres_DistritalPeru,
    pn.Poblaci�n_Total AS Total_Poblacion_BarrioUnidos,
    pn.Poblaci�n_Hombres AS Hombres_BarrioUnidos,
    pn.Poblaci�n_Mujeres AS Mujeres_BarrioUnidos,
    -- Promedio general de Poblaci�n_Total
    AVG((pd.Poblacion_Total + pn.Poblaci�n_Total) / 2.0) OVER () AS Promedio_Poblacion_TotalPeru_BU,
	AVG((pd.Poblacion_Hombres + pn.Poblaci�n_Hombres) / 2) OVER () AS Promedio_Poblacion_HombresPeru_BU,
	AVG((pd.Poblacion_Mujeres + pn.Poblaci�n_Mujeres) / 2) OVER () AS Promedio_Poblacion_HombresPeru_BU

FROM 
    DATA_PERU.dbo.PoblacionDistrital AS pd
JOIN 
    Barrios_Unidos.dbo.tb_poblacionneta AS pn 
ON 
    pd.ID = pn.id_poblacion;
