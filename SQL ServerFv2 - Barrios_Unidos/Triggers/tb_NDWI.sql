-- Trigger para después de insertar un dato en la tabla tb_NDWI
CREATE TRIGGER trg_after_insert_tb_NDWI
ON tb_NDWI
AFTER INSERT
AS
BEGIN
    PRINT 'Se ha insertado un nuevo registro en la tabla tb_NDWI'
END;
GO

-- Trigger para después de actualizar un dato en la tabla tb_NDWI
CREATE TRIGGER trg_after_update_tb_NDWI
ON tb_NDWI
AFTER UPDATE
AS
BEGIN
    PRINT 'Se ha actualizado un registro en la tabla tb_NDWI'
END;
GO

-- Trigger para después de eliminar un dato en la tabla tb_NDWI
CREATE TRIGGER trg_after_delete_tb_NDWI
ON tb_NDWI
AFTER DELETE
AS
BEGIN
    PRINT 'Se ha eliminado un registro en la tabla tb_NDWI'
END;
GO
