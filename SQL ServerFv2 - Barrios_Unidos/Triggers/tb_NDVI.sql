-- Trigger para después de insertar un dato en la tabla tb_NDVI
CREATE TRIGGER trg_after_insert_tb_NDVI
ON tb_NDVI
AFTER INSERT
AS
BEGIN
    PRINT 'Se ha insertado un nuevo registro en la tabla tb_NDVI'
END;
GO

-- Trigger para después de actualizar un dato en la tabla tb_NDVI
CREATE TRIGGER trg_after_update_tb_NDVI
ON tb_NDVI
AFTER UPDATE
AS
BEGIN
    PRINT 'Se ha actualizado un registro en la tabla tb_NDVI'
END;
GO

-- Trigger para después de eliminar un dato en la tabla tb_NDVI
CREATE TRIGGER trg_after_delete_tb_NDVI
ON tb_NDVI
AFTER DELETE
AS
BEGIN
    PRINT 'Se ha eliminado un registro en la tabla tb_NDVI'
END;
GO
