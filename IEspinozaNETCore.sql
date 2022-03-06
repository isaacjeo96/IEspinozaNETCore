CREATE DATABASE IEspinozaNETCore
GO
USE IEspinozaNETCore
GO

-- Tabla Rol
CREATE TABLE Rol
(
	IdRol TINYINT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50)
)

INSERT INTO Rol (Nombre) VALUES ('Administrador')
INSERT INTO Rol (Nombre) VALUES ('Usuario')


--Tabla Usuario

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR (50),
	ApellidoPaterno VARCHAR(50),
	ApellidoMaterno VARCHAR(50),
	FechaNacimiento DATE,
	Email VARCHAR(254),
	Telefono VARCHAR(20),
	IdRol TINYINT REFERENCES Rol(IdRol)
)

INSERT INTO Usuario (Nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Email,Telefono,IdRol) VALUES ('Isaac','Espinoza','Ocampo','05/10/1996','isaacjeo96@outlook.com','5527427050',1)
INSERT INTO Usuario (Nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Email,Telefono,IdRol) VALUES ('Patricia','Ocampo','Cuevas','04/12/1965','patyoc54@outlook.com','5529618196',1)
INSERT INTO Usuario (Nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Email,Telefono,IdRol) VALUES ('Javer','Espinoza','Gonzalez','04/11/1954','isaacjeg54@gmail.com','5513966210',2)
INSERT INTO Usuario (Nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Email,Telefono,IdRol) VALUES ('Priscila','Espinoza','Ocampo','11/14/1989','priscyeo89@gmail.com','5517318280',2)
INSERT INTO Usuario (Nombre,ApellidoPaterno,ApellidoMaterno,FechaNacimiento,Email,Telefono,IdRol) VALUES ('Marysol','Espinoza','Ocampo','09/26/1991','marysoleo91@hotmail.com','5611705147',2)