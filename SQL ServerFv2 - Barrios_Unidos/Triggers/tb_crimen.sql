-- Trigger para después de insertar un dato en la tabla tb_crimen
CREATE TRIGGER trg_after_insert_tb_crimen
ON tb_crimen
AFTER INSERT
AS
BEGIN
    PRINT 'Se ha insertado un nuevo registro en la tabla tb_crimen'
END;
GO

-- Trigger para después de actualizar un dato en la tabla tb_crimen
CREATE TRIGGER trg_after_update_tb_crimen
ON tb_crimen
AFTER UPDATE
AS
BEGIN
    PRINT 'Se ha actualizado un registro en la tabla tb_crimen'
END;
GO

-- Trigger para después de eliminar un dato en la tabla tb_crimen
CREATE TRIGGER trg_after_delete_tb_crimen
ON tb_crimen
AFTER DELETE
AS
BEGIN
    PRINT 'Se ha eliminado un registro en la tabla tb_crimen'
END;
GO
