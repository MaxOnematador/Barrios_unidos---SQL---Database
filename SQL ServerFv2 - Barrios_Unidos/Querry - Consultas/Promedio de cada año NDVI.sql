use Barrios_Unidos;
select * from tb_NDVI;

SELECT 
    tb_NDVI.a�o,
    AVG(tb_NDVI.NDVI) AS promedio_NDVI
FROM 
    tb_NDVI
GROUP BY 
    tb_NDVI.a�o;
