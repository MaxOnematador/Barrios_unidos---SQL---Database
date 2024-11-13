INSERT INTO tb_indices_unificada (id_NDVI, id_NDWI, NDVI, NDWI, fecha, año)
SELECT 
    n1.id_NDVI,        
    n2.id_NDWI,        
    n1.NDVI,        
    n2.NDWI,           
    n1.fecha,          
    n1.año             
FROM 
    tb_NDVI n1
JOIN 
    tb_NDWI n2 ON n1.fecha = n2.fecha AND n1.año = n2.año;

select * from tb_indices_unificada;
