SELECT * FROM barrios_unidos.comparendos;

-- Consultas Tabla Comparendos
-- Cuantos comparendos hay
SELECT COUNT(*) AS total_comparendos FROM Comparendos;

-- Comparendo por marca de vehiculo, solamente los comparendos de los AUTOMOVILES
SELECT * FROM Comparendos 
WHERE tipo_vehiculo = 'AUTOMOVIL';  

-- Consultar ultimos comparendos DESC, Antiguos ASC
SELECT * FROM Comparendos 
ORDER BY fecha_deteccion DESC;  


