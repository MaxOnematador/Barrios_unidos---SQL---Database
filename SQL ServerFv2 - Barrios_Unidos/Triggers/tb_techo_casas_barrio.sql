-- Trigger para después de insertar un dato en la tabla tb_techo_casas_barrio
CREATE TRIGGER trg_after_insert_tb_techo_casas_barrio
ON tb_techo_casas_barrio
AFTER INSERT
AS
BEGIN
    PRINT 'Se ha insertado un nuevo registro en la tabla tb_techo_casas_barrio'
END;
GO

-- Trigger para después de actualizar un dato en la tabla tb_techo_casas_barrio
CREATE TRIGGER trg_after_update_tb_techo_casas_barrio
ON tb_techo_casas_barrio
AFTER UPDATE
AS
BEGIN
    PRINT 'Se ha actualizado un registro en la tabla tb_techo_casas_barrio'
END;
GO

-- Trigger para después de eliminar un dato en la tabla tb_techo_casas_barrio
CREATE TRIGGER trg_after_delete_tb_techo_casas_barrio
ON tb_techo_casas_barrio
AFTER DELETE
AS
BEGIN
    PRINT 'Se ha eliminado un registro en la tabla tb_techo_casas_barrio'
END;
GO
