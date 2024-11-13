-- Trigger para despu�s de insertar un dato en la tabla tb_poblacionneta
CREATE TRIGGER trg_after_insert_tb_poblacionneta
ON tb_poblacionneta
AFTER INSERT
AS
BEGIN
    PRINT 'Se ha insertado un nuevo registro en la tabla tb_poblacionneta'
END;
GO

-- Trigger para despu�s de actualizar un dato en la tabla tb_poblacionneta
CREATE TRIGGER trg_after_update_tb_poblacionneta
ON tb_poblacionneta
AFTER UPDATE
AS
BEGIN
    PRINT 'Se ha actualizado un registro en la tabla tb_poblacionneta'
END;
GO

-- Trigger para despu�s de eliminar un dato en la tabla tb_poblacionneta
CREATE TRIGGER trg_after_delete_tb_poblacionneta
ON tb_poblacionneta
AFTER DELETE
AS
BEGIN
    PRINT 'Se ha eliminado un registro en la tabla tb_poblacionneta'
END;
GO


