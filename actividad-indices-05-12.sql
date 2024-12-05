-- PASO 1
CREATE DATABASE actividad_aft;
USE actividad_aft;

DROP TABLE IF EXISTS EMPLEADO_AFT;

CREATE TABLE EMPLEADO_AFT (
    idEmpleado INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(25) NOT NULL,
    Apellidos VARCHAR(25) NOT NULL,
    DNI VARCHAR(9) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telefono VARCHAR(9),
    FechaContrato DATE NOT NULL,
    Sueldo DECIMAL(10,2) NOT NULL
);
    
DESCRIBE EMPLEADO_AFT;
SHOW TABLES LIKE 'EMPLEADO_AFT';

-- PASO 2    
CREATE INDEX idx_nombre_apellido 
ON EMPLEADO_AFT (nombre, apellidos);

INSERT INTO EMPLEADO_AFT (Nombre, Apellidos, DNI, Email, Telefono, FechaContrato, Sueldo)
VALUES
('Juan', 'Pérez', '12345678A', 'juan.perez@example.com', '600123456', '2022-01-15', 2500.00),
('María', 'López', '87654321B', 'maria.lopez@example.com', '650987654', '2021-03-10', 2700.50),
('Carlos', 'García', '11223344C', 'carlos.garcia@example.com', '690456789', '2023-06-01', 2300.00),
('Ana', 'Martínez', '55667788D', 'ana.martinez@example.com', '620789123', '2020-09-20', 2800.75),
('Luis', 'Hernández', '99887766E', 'luis.hernandez@example.com', '610654321', '2022-12-01', 2400.00),
('Elena', 'Gómez', '33445566F', 'elena.gomez@example.com', '670112233', '2021-05-15', 2650.30);


SELECT * FROM EMPLEADO_AFT;

-- PASO 4
EXPLAIN SELECT * FROM EMPLEADO_AFT 
WHERE Nombre = 'Juan' AND Apellidos = 'Pérez';

-- PASO 5
SELECT * FROM EMPLEADO_AFT 
WHERE idEmpleado = 1;

-- PASO 6
SHOW INDEX FROM EMPLEADO_AFT;

-- PASO 7
SHOW INDEX FROM EMPLEADO_AFT;

DROP INDEX idx_nombre_apellido ON EMPLEADO_AFT;

EXPLAIN SELECT * FROM EMPLEADO_AFT 
WHERE nombre = 'Juan' AND apellidos = 'Pérez';

-- PASO 8
ANALYZE TABLE EMPLEADO_AFT;

OPTIMIZE TABLE EMPLEADO_AFT;

-- PASO 9
SET PROFILING = 1;
SELECT * FROM EMPLEADO_AFT WHERE nombre = 'Juan' AND apellidos = 'Pérez';
SHOW PROFILE FOR QUERY 1;
SHOW PROFILES;
SET PROFILING = 0;

-- PASO 10
CHECK TABLE EMPLEADO_AFT;






    

    