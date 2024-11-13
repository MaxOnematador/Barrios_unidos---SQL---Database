-- Uso del INNER JOIN para encontar relacion entre el año de las tablas crimen y personas 

SELECT 
    c.año, 
    c.num_hurtos_bancos, 
    c.tasa_hurtos_bancos, 
    p.Población_Total, 
    p.Población_Hombres, 
    p.Población_Mujeres
FROM 
    tb_crimen c
INNER JOIN 
    tb_poblacionneta p 
ON 
    c.año = p.Año;
