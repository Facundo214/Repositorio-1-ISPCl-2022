CREATE DATABASE peluqueríacanina;
USE peluqueríacanina;

CREATE TABLE Dueño(
DNI BIGINT NOT NULL PRIMARY KEY,
Nombre Varchar(30) NOT NULL,
Apellido Varchar(30),
Telefono BIGINT,
Direccion Varchar(60)
);

CREATE TABLE Perro(
Id_Perro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(30),
Fecha_nacimiento DATE,
Sexo VARCHAR(10),
DNIDueño BIGINT,
CONSTRAINT dcukdshkscjscjhcshkschcskkscck FOREIGN KEY (DNIDueño) REFERENCES Dueño (DNI)
);

CREATE TABLE Historial(
Id_Historial INT NOT NULL PRIMARY KEY,
Fecha DATE,
Perro INT NOT NULL,
Descripcion VARCHAR(100),
Monto FLOAT
);

INSERT INTO Dueño (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (23647378, "Juan", "Requelme", 3516661077, "Libertad 213");

#9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE Dueño SET Direccion = "Libertad 123"
Where DNI = 23647378;

