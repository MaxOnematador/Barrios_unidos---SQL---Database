-- Trigger para despu�s de insertar un dato en la tabla Gasto_Hogar
CREATE TRIGGER trg_after_insert_Gasto_Hogar
ON Gasto_Hogar
AFTER INSERT
AS
BEGIN
    PRINT 'Se ha insertado un nuevo registro en la tabla Gasto_Hogar'
END;
GO

-- Trigger para despu�s de actualizar un dato en la tabla Gasto_Hogar
CREATE TRIGGER trg_after_update_Gasto_Hogar
ON Gasto_Hogar
AFTER UPDATE
AS
BEGIN
    PRINT 'Se ha actualizado un registro en la tabla Gasto_Hogar'
END;
GO

-- Trigger para despu�s de eliminar un dato en la tabla Gasto_Hogar
CREATE TRIGGER trg_after_delete_Gasto_Hogar
ON Gasto_Hogar
AFTER DELETE
AS
BEGIN
    PRINT 'Se ha eliminado un registro en la tabla Gasto_Hogar'
END;
GO
