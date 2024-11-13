-- 1. Eliminar y crear la base de datos
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Barrios_Unidos') 
    DROP DATABASE Barrios_Unidos;
GO
CREATE DATABASE Barrios_Unidos;
GO
USE Barrios_Unidos;
GO

-- 2. Crear tabla tb_poblacionneta
CREATE TABLE tb_poblacionneta (
    id_poblacion INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Año INT,  -- Cambiado de YEAR a INT
    Población_Total INT,
    Población_Hombres INT,
    Población_Mujeres INT,
    Tasa_de_Crecimiento_Poblacional FLOAT
);

-- 3. Crear tabla tb_techo_casas_barrio
CREATE TABLE tb_techo_casas_barrio (
    id_techo_casas INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    barrio NVARCHAR(100),
    casas_rojas INT,
    casas_amarillas INT,
    casas_verdes INT
);

-- 4. Crear tabla tb_NDWI
CREATE TABLE tb_NDWI (
    id_NDWI INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    fecha NVARCHAR(100),
    año INT,  -- Cambiado de YEAR a INT
    NDWI FLOAT
);

-- 5. Crear tabla tb_NDVI
CREATE TABLE tb_NDVI (
    id_NDVI INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    fecha NVARCHAR(100),
    año INT,  -- Cambiado de YEAR a INT
    NDVI FLOAT
);

-- 6. Crear tabla tb_indices_unificada
CREATE TABLE tb_indices_unificada (
    id_indices INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    id_NDVI INT,
    id_NDWI INT,
    NDVI FLOAT,
    NDWI FLOAT,
    fecha NVARCHAR(100),
    año INT,  -- Cambiado de YEAR a INT
    FOREIGN KEY (id_NDVI) REFERENCES tb_NDVI (id_NDVI),
    FOREIGN KEY (id_NDWI) REFERENCES tb_NDWI (id_NDWI)
);

-- 7. Crear tabla tb_crimen
CREATE TABLE tb_crimen (
    id_crimen INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    año INT,  -- Cambiado de YEAR a INT
    num_hurtos_bancos INT,
    tasa_hurtos_bancos FLOAT,
    num_hurtos_establecimientos_comercio INT,
    tasa_hurtos_establecimientos_comercio FLOAT,
    num_hurtos_motos INT,
    tasa_hurtos_motos FLOAT,
    num_hurtos_personas INT,
    tasa_hurtos_personas FLOAT,
    num_hurtos_residencias INT,
    tasa_hurtos_residencias FLOAT,
    num_hurtos_vehiculos INT,
    tasa_hurtos_vehiculos FLOAT,
    id_poblacion INT,
    FOREIGN KEY (id_poblacion) REFERENCES tb_poblacionneta (id_poblacion)
);

-- 8. Crear tabla Comparendos
CREATE TABLE Comparendos (
    id_comparendo INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    num_comparendo INT,
    cod_comparendo NVARCHAR(20),
    fecha_deteccion DATETIME,
    dia INT,
    hora TIME,
    fecha_imposicion DATETIME,
    fuente_comparendo NVARCHAR(50),
    tipo_vehiculo NVARCHAR(50),
    marca NVARCHAR(50),
    modelo INT,
    id_crimen INT,
    FOREIGN KEY (id_crimen) REFERENCES tb_crimen (id_crimen)
);

-- 9. Crear tabla Gasto_Hogar
CREATE TABLE Gasto_Hogar (
    id_gashogar INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    año INT,  -- Cambiado de YEAR a INT
    aparatos_domesticos BIGINT,
    apa_limpieza BIGINT,
    combustible_servicios_publicos BIGINT,
    vivienda BIGINT,
    muebles BIGINT,
    ropa BIGINT,
    utensilios_domesticos BIGINT,
    id_techo_casas INT,
    FOREIGN KEY (id_techo_casas) REFERENCES tb_techo_casas_barrio (id_techo_casas)
);
