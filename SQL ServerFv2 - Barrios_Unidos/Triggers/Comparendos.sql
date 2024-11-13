-- Trigger para después de insertar un dato en la tabla Comparendos
CREATE TRIGGER trg_after_insert_Comparendos
ON Comparendos
AFTER INSERT
AS
BEGIN
    PRINT 'Se ha insertado un nuevo registro en la tabla Comparendos'
END;
GO

-- Trigger para después de actualizar un dato en la tabla Comparendos
CREATE TRIGGER trg_after_update_Comparendos
ON Comparendos
AFTER UPDATE
AS
BEGIN
    PRINT 'Se ha actualizado un registro en la tabla Comparendos'
END;
GO

-- Trigger para después de eliminar un dato en la tabla Comparendos
CREATE TRIGGER trg_after_delete_Comparendos
ON Comparendos
AFTER DELETE
AS
BEGIN
    PRINT 'Se ha eliminado un registro en la tabla Comparendos'
END;
GO
