DROP DATABASE IF EXISTS hospital_ama;
CREATE DATABASE hospital_ama CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE hospital_ama;


-- Tabla Pacientes

CREATE TABLE Pacientes (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    documento_identidad VARCHAR(20) UNIQUE NOT NULL,

    fecha_nacimiento DATE NOT NULL,

    direccion VARCHAR(255),

    telefono VARCHAR(15) UNIQUE

);


INSERT INTO Pacientes (nombre, documento_identidad, fecha_nacimiento, direccion, telefono) 

VALUES ('Carlos L�pez', '12345678', '1990-05-15', 'Av. Principal #123, Ciudad', '555-1234');


INSERT INTO Pacientes (nombre, documento_identidad, fecha_nacimiento, direccion, telefono) VALUES

('Ana Mart�nez', '23456789', '1985-07-20', 'Calle Secundaria #45, Ciudad', '555-2345'),

('Luis Fern�ndez', '34567890', '1992-09-10', 'Barrio Centro #22, Ciudad', '555-3456'),

('Mar�a G�mez', '45678901', '1988-12-01', 'Residencial Norte #78, Ciudad', '555-4567'),

('Pedro S�nchez', '56789012', '1995-03-25', 'Pueblo Nuevo #99, Ciudad', '555-5678'),

('Luc�a Ram�rez', '67890123', '1980-11-30', 'Zona Industrial #55, Ciudad', '555-6789'),

('Juan P�rez', '78901234', '1975-06-05', 'Avenida Sur #12, Ciudad', '555-7890'),

('Elena Torres', '89012345', '2000-02-18', 'Colonia Este #36, Ciudad', '555-8901'),

('Ricardo Morales', '90123456', '1987-08-12', 'Centro Hist�rico #88, Ciudad', '555-9012'),

('Sof�a Herrera', '01234567', '1993-04-22', 'Residencial Oeste #17, Ciudad', '555-0123'),

('Gabriel Castro', '12345000', '1998-10-09', 'Paseo Central #65, Ciudad', '555-1235'),

('Isabela Ruiz', '23456000', '1983-05-29', 'Calle Peatonal #90, Ciudad', '555-2346'),

('Fernando D�az', '34567000', '1990-07-14', 'Villa Hermosa #41, Ciudad', '555-3457'),

('Andrea L�pez', '45678000', '1996-12-19', 'Avenida Norte #85, Ciudad', '555-4568'),

('Daniel Ortega', '56789000', '1979-11-03', 'Callej�n del Sol #21, Ciudad', '555-5679'),

('Valentina Mendoza', '67890000', '1991-03-11', 'Zona Rosa #72, Ciudad', '555-6780'),

('Mart�n Paredes', '78901000', '2002-06-07', 'Barrio Colonial #44, Ciudad', '555-7891'),

('Carla V�zquez', '89012000', '1986-09-26', 'Centro Urbano #10, Ciudad', '555-8902'),

('Javier N��ez', '90123000', '1982-02-14', 'Residencial Nueva #66, Ciudad', '555-9013'),

('Paula Guti�rrez', '01234000', '1997-08-31', 'Calle Central #39, Ciudad', '555-0124');


-- Tabla Doctores

CREATE TABLE Doctores (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    fecha_nacimiento DATE NOT NULL,

    especialidad VARCHAR(100) NOT NULL,

    numero_licencia VARCHAR(20) UNIQUE NOT NULL,

    telefono VARCHAR(15) UNIQUE,

    correo VARCHAR(100) UNIQUE

);


INSERT INTO Doctores (nombre, fecha_nacimiento, especialidad, numero_licencia, telefono, correo) VALUES

('Dr. Juan P�rez', '1978-05-12', 'Cardiolog�a', 'LIC-1001', '555-1111', 'juan.perez@hospitalama.com'),

('Dra. Ana G�mez', '1985-09-23', 'Pediatr�a', 'LIC-1002', '555-2222', 'ana.gomez@hospitalama.com'),

('Dr. Luis Mart�nez', '1980-03-17', 'Neurolog�a', 'LIC-1003', '555-3333', 'luis.martinez@hospitalama.com'),

('Dra. Carolina Torres', '1976-07-30', 'Ginecolog�a', 'LIC-1004', '555-4444', 'carolina.torres@hospitalama.com'),

('Dr. Alejandro Rivas', '1982-12-05', 'Ortopedia', 'LIC-1005', '555-5555', 'alejandro.rivas@hospitalama.com'),

('Dra. Gabriela Mendoza', '1990-06-21', 'Dermatolog�a', 'LIC-1006', '555-6666', 'gabriela.mendoza@hospitalama.com'),

('Dr. Ricardo Salazar', '1988-08-14', 'Oftalmolog�a', 'LIC-1007', '555-7777', 'ricardo.salazar@hospitalama.com'),

('Dra. Valeria Contreras', '1979-04-09', 'Psiquiatr�a', 'LIC-1008', '555-8888', 'valeria.contreras@hospitalama.com');


-- Tabla Servicios

CREATE TABLE Servicios (

    id INT AUTO_INCREMENT PRIMARY KEY,

    nombre_servicio VARCHAR(100) NOT NULL,

    descripcion VARCHAR(255),

    precio DECIMAL(10,2) NOT NULL,

    duracion_estimada INT NOT NULL, -- duraci�n en minutos

    fecha_creacion DATE NOT NULL

);


INSERT INTO Servicios (nombre_servicio, descripcion, precio, duracion_estimada, fecha_creacion) VALUES

('Consulta General', 'Atenci�n m�dica general para diagn�stico y tratamiento de enfermedades comunes.', 50.00, 30, '2025-03-12'),

('Consulta Pedi�trica', 'Consulta m�dica especializada en el cuidado de ni�os.', 60.00, 40, '2025-03-12'),

('Consulta Cardiol�gica', 'Evaluaci�n del coraz�n y sistema circulatorio.', 80.00, 45, '2025-03-12'),

('Consulta Neurol�gica', 'Diagn�stico y tratamiento de enfermedades del sistema nervioso.', 90.00, 50, '2025-03-12'),

('Consulta Ginecol�gica', 'Revisi�n de la salud reproductiva femenina.', 70.00, 40, '2025-03-12'),

('Consulta Dermatol�gica', 'Evaluaci�n y tratamiento de enfermedades de la piel.', 75.00, 35, '2025-03-12'),

('Consulta Oftalmol�gica', 'Revisi�n y diagn�stico de problemas visuales.', 65.00, 30, '2025-03-12'),

('Consulta Psiqui�trica', 'Evaluaci�n y tratamiento de trastornos mentales y emocionales.', 100.00, 60, '2025-03-12'),

('Radiograf�a', 'Estudio de imagen para diagn�stico de fracturas y problemas internos.', 120.00, 20, '2025-03-12'),

('An�lisis de Laboratorio', 'Ex�menes de sangre y orina para diagn�stico de enfermedades.', 40.00, 25, '2025-03-12');


-- Tabla Citas

CREATE TABLE Citas (

    id INT AUTO_INCREMENT PRIMARY KEY,

    paciente_id INT NOT NULL,

    doctor_id INT NOT NULL,

    servicio_id INT NOT NULL,

    fecha DATE NOT NULL,

    hora TIME NOT NULL,

    estado VARCHAR(50) NOT NULL, -- Confirmada, Pendiente, Cancelada

    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id),

    FOREIGN KEY (doctor_id) REFERENCES Doctores(id),

    FOREIGN KEY (servicio_id) REFERENCES Servicios(id)

);




-- Pacientes adicionales necesarios para las citas 21 a 158
INSERT INTO Pacientes (nombre, documento_identidad, fecha_nacimiento, direccion, telefono) VALUES
('Paciente 21', 'DOC00021', '1990-01-01', 'Dirección 21, Ciudad', '600-0021'),
('Paciente 22', 'DOC00022', '1990-01-01', 'Dirección 22, Ciudad', '600-0022'),
('Paciente 23', 'DOC00023', '1990-01-01', 'Dirección 23, Ciudad', '600-0023'),
('Paciente 24', 'DOC00024', '1990-01-01', 'Dirección 24, Ciudad', '600-0024'),
('Paciente 25', 'DOC00025', '1990-01-01', 'Dirección 25, Ciudad', '600-0025'),
('Paciente 26', 'DOC00026', '1990-01-01', 'Dirección 26, Ciudad', '600-0026'),
('Paciente 27', 'DOC00027', '1990-01-01', 'Dirección 27, Ciudad', '600-0027'),
('Paciente 28', 'DOC00028', '1990-01-01', 'Dirección 28, Ciudad', '600-0028'),
('Paciente 29', 'DOC00029', '1990-01-01', 'Dirección 29, Ciudad', '600-0029'),
('Paciente 30', 'DOC00030', '1990-01-01', 'Dirección 30, Ciudad', '600-0030'),
('Paciente 31', 'DOC00031', '1990-01-01', 'Dirección 31, Ciudad', '600-0031'),
('Paciente 32', 'DOC00032', '1990-01-01', 'Dirección 32, Ciudad', '600-0032'),
('Paciente 33', 'DOC00033', '1990-01-01', 'Dirección 33, Ciudad', '600-0033'),
('Paciente 34', 'DOC00034', '1990-01-01', 'Dirección 34, Ciudad', '600-0034'),
('Paciente 35', 'DOC00035', '1990-01-01', 'Dirección 35, Ciudad', '600-0035'),
('Paciente 36', 'DOC00036', '1990-01-01', 'Dirección 36, Ciudad', '600-0036'),
('Paciente 37', 'DOC00037', '1990-01-01', 'Dirección 37, Ciudad', '600-0037'),
('Paciente 38', 'DOC00038', '1990-01-01', 'Dirección 38, Ciudad', '600-0038'),
('Paciente 39', 'DOC00039', '1990-01-01', 'Dirección 39, Ciudad', '600-0039'),
('Paciente 40', 'DOC00040', '1990-01-01', 'Dirección 40, Ciudad', '600-0040'),
('Paciente 41', 'DOC00041', '1990-01-01', 'Dirección 41, Ciudad', '600-0041'),
('Paciente 42', 'DOC00042', '1990-01-01', 'Dirección 42, Ciudad', '600-0042'),
('Paciente 43', 'DOC00043', '1990-01-01', 'Dirección 43, Ciudad', '600-0043'),
('Paciente 44', 'DOC00044', '1990-01-01', 'Dirección 44, Ciudad', '600-0044'),
('Paciente 45', 'DOC00045', '1990-01-01', 'Dirección 45, Ciudad', '600-0045'),
('Paciente 46', 'DOC00046', '1990-01-01', 'Dirección 46, Ciudad', '600-0046'),
('Paciente 47', 'DOC00047', '1990-01-01', 'Dirección 47, Ciudad', '600-0047'),
('Paciente 48', 'DOC00048', '1990-01-01', 'Dirección 48, Ciudad', '600-0048'),
('Paciente 49', 'DOC00049', '1990-01-01', 'Dirección 49, Ciudad', '600-0049'),
('Paciente 50', 'DOC00050', '1990-01-01', 'Dirección 50, Ciudad', '600-0050'),
('Paciente 51', 'DOC00051', '1990-01-01', 'Dirección 51, Ciudad', '600-0051'),
('Paciente 52', 'DOC00052', '1990-01-01', 'Dirección 52, Ciudad', '600-0052'),
('Paciente 53', 'DOC00053', '1990-01-01', 'Dirección 53, Ciudad', '600-0053'),
('Paciente 54', 'DOC00054', '1990-01-01', 'Dirección 54, Ciudad', '600-0054'),
('Paciente 55', 'DOC00055', '1990-01-01', 'Dirección 55, Ciudad', '600-0055'),
('Paciente 56', 'DOC00056', '1990-01-01', 'Dirección 56, Ciudad', '600-0056'),
('Paciente 57', 'DOC00057', '1990-01-01', 'Dirección 57, Ciudad', '600-0057'),
('Paciente 58', 'DOC00058', '1990-01-01', 'Dirección 58, Ciudad', '600-0058'),
('Paciente 59', 'DOC00059', '1990-01-01', 'Dirección 59, Ciudad', '600-0059'),
('Paciente 60', 'DOC00060', '1990-01-01', 'Dirección 60, Ciudad', '600-0060'),
('Paciente 61', 'DOC00061', '1990-01-01', 'Dirección 61, Ciudad', '600-0061'),
('Paciente 62', 'DOC00062', '1990-01-01', 'Dirección 62, Ciudad', '600-0062'),
('Paciente 63', 'DOC00063', '1990-01-01', 'Dirección 63, Ciudad', '600-0063'),
('Paciente 64', 'DOC00064', '1990-01-01', 'Dirección 64, Ciudad', '600-0064'),
('Paciente 65', 'DOC00065', '1990-01-01', 'Dirección 65, Ciudad', '600-0065'),
('Paciente 66', 'DOC00066', '1990-01-01', 'Dirección 66, Ciudad', '600-0066'),
('Paciente 67', 'DOC00067', '1990-01-01', 'Dirección 67, Ciudad', '600-0067'),
('Paciente 68', 'DOC00068', '1990-01-01', 'Dirección 68, Ciudad', '600-0068'),
('Paciente 69', 'DOC00069', '1990-01-01', 'Dirección 69, Ciudad', '600-0069'),
('Paciente 70', 'DOC00070', '1990-01-01', 'Dirección 70, Ciudad', '600-0070'),
('Paciente 71', 'DOC00071', '1990-01-01', 'Dirección 71, Ciudad', '600-0071'),
('Paciente 72', 'DOC00072', '1990-01-01', 'Dirección 72, Ciudad', '600-0072'),
('Paciente 73', 'DOC00073', '1990-01-01', 'Dirección 73, Ciudad', '600-0073'),
('Paciente 74', 'DOC00074', '1990-01-01', 'Dirección 74, Ciudad', '600-0074'),
('Paciente 75', 'DOC00075', '1990-01-01', 'Dirección 75, Ciudad', '600-0075'),
('Paciente 76', 'DOC00076', '1990-01-01', 'Dirección 76, Ciudad', '600-0076'),
('Paciente 77', 'DOC00077', '1990-01-01', 'Dirección 77, Ciudad', '600-0077'),
('Paciente 78', 'DOC00078', '1990-01-01', 'Dirección 78, Ciudad', '600-0078'),
('Paciente 79', 'DOC00079', '1990-01-01', 'Dirección 79, Ciudad', '600-0079'),
('Paciente 80', 'DOC00080', '1990-01-01', 'Dirección 80, Ciudad', '600-0080'),
('Paciente 81', 'DOC00081', '1990-01-01', 'Dirección 81, Ciudad', '600-0081'),
('Paciente 82', 'DOC00082', '1990-01-01', 'Dirección 82, Ciudad', '600-0082'),
('Paciente 83', 'DOC00083', '1990-01-01', 'Dirección 83, Ciudad', '600-0083'),
('Paciente 84', 'DOC00084', '1990-01-01', 'Dirección 84, Ciudad', '600-0084'),
('Paciente 85', 'DOC00085', '1990-01-01', 'Dirección 85, Ciudad', '600-0085'),
('Paciente 86', 'DOC00086', '1990-01-01', 'Dirección 86, Ciudad', '600-0086'),
('Paciente 87', 'DOC00087', '1990-01-01', 'Dirección 87, Ciudad', '600-0087'),
('Paciente 88', 'DOC00088', '1990-01-01', 'Dirección 88, Ciudad', '600-0088'),
('Paciente 89', 'DOC00089', '1990-01-01', 'Dirección 89, Ciudad', '600-0089'),
('Paciente 90', 'DOC00090', '1990-01-01', 'Dirección 90, Ciudad', '600-0090'),
('Paciente 91', 'DOC00091', '1990-01-01', 'Dirección 91, Ciudad', '600-0091'),
('Paciente 92', 'DOC00092', '1990-01-01', 'Dirección 92, Ciudad', '600-0092'),
('Paciente 93', 'DOC00093', '1990-01-01', 'Dirección 93, Ciudad', '600-0093'),
('Paciente 94', 'DOC00094', '1990-01-01', 'Dirección 94, Ciudad', '600-0094'),
('Paciente 95', 'DOC00095', '1990-01-01', 'Dirección 95, Ciudad', '600-0095'),
('Paciente 96', 'DOC00096', '1990-01-01', 'Dirección 96, Ciudad', '600-0096'),
('Paciente 97', 'DOC00097', '1990-01-01', 'Dirección 97, Ciudad', '600-0097'),
('Paciente 98', 'DOC00098', '1990-01-01', 'Dirección 98, Ciudad', '600-0098'),
('Paciente 99', 'DOC00099', '1990-01-01', 'Dirección 99, Ciudad', '600-0099'),
('Paciente 100', 'DOC00100', '1990-01-01', 'Dirección 100, Ciudad', '600-0100'),
('Paciente 101', 'DOC00101', '1990-01-01', 'Dirección 101, Ciudad', '600-0101'),
('Paciente 102', 'DOC00102', '1990-01-01', 'Dirección 102, Ciudad', '600-0102'),
('Paciente 103', 'DOC00103', '1990-01-01', 'Dirección 103, Ciudad', '600-0103'),
('Paciente 104', 'DOC00104', '1990-01-01', 'Dirección 104, Ciudad', '600-0104'),
('Paciente 105', 'DOC00105', '1990-01-01', 'Dirección 105, Ciudad', '600-0105'),
('Paciente 106', 'DOC00106', '1990-01-01', 'Dirección 106, Ciudad', '600-0106'),
('Paciente 107', 'DOC00107', '1990-01-01', 'Dirección 107, Ciudad', '600-0107'),
('Paciente 108', 'DOC00108', '1990-01-01', 'Dirección 108, Ciudad', '600-0108'),
('Paciente 109', 'DOC00109', '1990-01-01', 'Dirección 109, Ciudad', '600-0109'),
('Paciente 110', 'DOC00110', '1990-01-01', 'Dirección 110, Ciudad', '600-0110'),
('Paciente 111', 'DOC00111', '1990-01-01', 'Dirección 111, Ciudad', '600-0111'),
('Paciente 112', 'DOC00112', '1990-01-01', 'Dirección 112, Ciudad', '600-0112'),
('Paciente 113', 'DOC00113', '1990-01-01', 'Dirección 113, Ciudad', '600-0113'),
('Paciente 114', 'DOC00114', '1990-01-01', 'Dirección 114, Ciudad', '600-0114'),
('Paciente 115', 'DOC00115', '1990-01-01', 'Dirección 115, Ciudad', '600-0115'),
('Paciente 116', 'DOC00116', '1990-01-01', 'Dirección 116, Ciudad', '600-0116'),
('Paciente 117', 'DOC00117', '1990-01-01', 'Dirección 117, Ciudad', '600-0117'),
('Paciente 118', 'DOC00118', '1990-01-01', 'Dirección 118, Ciudad', '600-0118'),
('Paciente 119', 'DOC00119', '1990-01-01', 'Dirección 119, Ciudad', '600-0119'),
('Paciente 120', 'DOC00120', '1990-01-01', 'Dirección 120, Ciudad', '600-0120'),
('Paciente 121', 'DOC00121', '1990-01-01', 'Dirección 121, Ciudad', '600-0121'),
('Paciente 122', 'DOC00122', '1990-01-01', 'Dirección 122, Ciudad', '600-0122'),
('Paciente 123', 'DOC00123', '1990-01-01', 'Dirección 123, Ciudad', '600-0123'),
('Paciente 124', 'DOC00124', '1990-01-01', 'Dirección 124, Ciudad', '600-0124'),
('Paciente 125', 'DOC00125', '1990-01-01', 'Dirección 125, Ciudad', '600-0125'),
('Paciente 126', 'DOC00126', '1990-01-01', 'Dirección 126, Ciudad', '600-0126'),
('Paciente 127', 'DOC00127', '1990-01-01', 'Dirección 127, Ciudad', '600-0127'),
('Paciente 128', 'DOC00128', '1990-01-01', 'Dirección 128, Ciudad', '600-0128'),
('Paciente 129', 'DOC00129', '1990-01-01', 'Dirección 129, Ciudad', '600-0129'),
('Paciente 130', 'DOC00130', '1990-01-01', 'Dirección 130, Ciudad', '600-0130'),
('Paciente 131', 'DOC00131', '1990-01-01', 'Dirección 131, Ciudad', '600-0131'),
('Paciente 132', 'DOC00132', '1990-01-01', 'Dirección 132, Ciudad', '600-0132'),
('Paciente 133', 'DOC00133', '1990-01-01', 'Dirección 133, Ciudad', '600-0133'),
('Paciente 134', 'DOC00134', '1990-01-01', 'Dirección 134, Ciudad', '600-0134'),
('Paciente 135', 'DOC00135', '1990-01-01', 'Dirección 135, Ciudad', '600-0135'),
('Paciente 136', 'DOC00136', '1990-01-01', 'Dirección 136, Ciudad', '600-0136'),
('Paciente 137', 'DOC00137', '1990-01-01', 'Dirección 137, Ciudad', '600-0137'),
('Paciente 138', 'DOC00138', '1990-01-01', 'Dirección 138, Ciudad', '600-0138'),
('Paciente 139', 'DOC00139', '1990-01-01', 'Dirección 139, Ciudad', '600-0139'),
('Paciente 140', 'DOC00140', '1990-01-01', 'Dirección 140, Ciudad', '600-0140'),
('Paciente 141', 'DOC00141', '1990-01-01', 'Dirección 141, Ciudad', '600-0141'),
('Paciente 142', 'DOC00142', '1990-01-01', 'Dirección 142, Ciudad', '600-0142'),
('Paciente 143', 'DOC00143', '1990-01-01', 'Dirección 143, Ciudad', '600-0143'),
('Paciente 144', 'DOC00144', '1990-01-01', 'Dirección 144, Ciudad', '600-0144'),
('Paciente 145', 'DOC00145', '1990-01-01', 'Dirección 145, Ciudad', '600-0145'),
('Paciente 146', 'DOC00146', '1990-01-01', 'Dirección 146, Ciudad', '600-0146'),
('Paciente 147', 'DOC00147', '1990-01-01', 'Dirección 147, Ciudad', '600-0147'),
('Paciente 148', 'DOC00148', '1990-01-01', 'Dirección 148, Ciudad', '600-0148'),
('Paciente 149', 'DOC00149', '1990-01-01', 'Dirección 149, Ciudad', '600-0149'),
('Paciente 150', 'DOC00150', '1990-01-01', 'Dirección 150, Ciudad', '600-0150'),
('Paciente 151', 'DOC00151', '1990-01-01', 'Dirección 151, Ciudad', '600-0151'),
('Paciente 152', 'DOC00152', '1990-01-01', 'Dirección 152, Ciudad', '600-0152'),
('Paciente 153', 'DOC00153', '1990-01-01', 'Dirección 153, Ciudad', '600-0153'),
('Paciente 154', 'DOC00154', '1990-01-01', 'Dirección 154, Ciudad', '600-0154'),
('Paciente 155', 'DOC00155', '1990-01-01', 'Dirección 155, Ciudad', '600-0155'),
('Paciente 156', 'DOC00156', '1990-01-01', 'Dirección 156, Ciudad', '600-0156'),
('Paciente 157', 'DOC00157', '1990-01-01', 'Dirección 157, Ciudad', '600-0157'),
('Paciente 158', 'DOC00158', '1990-01-01', 'Dirección 158, Ciudad', '600-0158');


-- Doctores adicionales necesarios para las citas
INSERT INTO Doctores (nombre, fecha_nacimiento, especialidad, numero_licencia, telefono, correo) VALUES
('Dr. Especialista 9', '1980-01-01', 'Medicina General', 'LIC-1009', '600-0009', 'doctor9@hospitalama.com'),
('Dr. Especialista 10', '1980-01-01', 'Endocrinología', 'LIC-1010', '600-0010', 'doctor10@hospitalama.com'),
('Dr. Especialista 11', '1980-01-01', 'Urología', 'LIC-1011', '600-0011', 'doctor11@hospitalama.com'),
('Dr. Especialista 12', '1980-01-01', 'Otorrinolaringología', 'LIC-1012', '600-0012', 'doctor12@hospitalama.com'),
('Dr. Especialista 13', '1980-01-01', 'Traumatología', 'LIC-1013', '600-0013', 'doctor13@hospitalama.com'),
('Dr. Especialista 14', '1980-01-01', 'Neumología', 'LIC-1014', '600-0014', 'doctor14@hospitalama.com'),
('Dr. Especialista 15', '1980-01-01', 'Gastroenterología', 'LIC-1015', '600-0015', 'doctor15@hospitalama.com'),
('Dr. Especialista 16', '1980-01-01', 'Oncología', 'LIC-1016', '600-0016', 'doctor16@hospitalama.com'),
('Dr. Especialista 17', '1980-01-01', 'Reumatología', 'LIC-1017', '600-0017', 'doctor17@hospitalama.com'),
('Dr. Especialista 18', '1980-01-01', 'Infectología', 'LIC-1018', '600-0018', 'doctor18@hospitalama.com'),
('Dr. Especialista 19', '1980-01-01', 'Medicina Interna', 'LIC-1019', '600-0019', 'doctor19@hospitalama.com'),
('Dr. Especialista 20', '1980-01-01', 'Cirugía General', 'LIC-1020', '600-0020', 'doctor20@hospitalama.com');

-- Tabla Citas corregida
INSERT INTO Citas (paciente_id, doctor_id, servicio_id, fecha, hora, estado) VALUES
(1, 1, 1, '2025-03-20', '09:00:00', 'Confirmada'),
(2, 1, 3, '2025-03-22', '10:30:00', 'Pendiente'),
(3, 1, 5, '2025-03-25', '14:00:00', 'Confirmada'),
(4, 2, 2, '2025-03-18', '11:00:00', 'Pendiente'),
(5, 2, 4, '2025-03-21', '16:30:00', 'Confirmada'),
(6, 2, 6, '2025-03-27', '12:15:00', 'Cancelada'),
(7, 3, 1, '2025-03-19', '08:45:00', 'Confirmada'),
(8, 3, 3, '2025-03-23', '15:00:00', 'Pendiente'),
(9, 3, 5, '2025-03-26', '09:30:00', 'Confirmada'),
(10, 4, 2, '2025-03-17', '14:45:00', 'Pendiente'),
(11, 4, 4, '2025-03-24', '11:30:00', 'Confirmada'),
(12, 4, 6, '2025-03-28', '13:00:00', 'Confirmada'),
(13, 5, 7, '2025-03-19', '10:15:00', 'Confirmada'),
(14, 5, 8, '2025-03-22', '12:45:00', 'Pendiente'),
(15, 5, 3, '2025-03-26', '16:30:00', 'Cancelada'),
(16, 6, 5, '2025-03-20', '08:30:00', 'Pendiente'),
(17, 6, 7, '2025-03-23', '15:45:00', 'Confirmada'),
(18, 6, 8, '2025-03-27', '10:00:00', 'Pendiente'),
(19, 7, 1, '2025-03-21', '09:45:00', 'Confirmada'),
(20, 7, 6, '2025-03-24', '14:15:00', 'Pendiente'),
(21, 7, 7, '2025-03-28', '11:00:00', 'Confirmada'),
(22, 8, 2, '2025-03-17', '13:30:00', 'Pendiente'),
(23, 8, 4, '2025-03-22', '16:00:00', 'Confirmada'),
(24, 8, 5, '2025-03-26', '09:15:00', 'Pendiente'),
(25, 9, 3, '2025-03-18', '15:30:00', 'Confirmada'),
(26, 9, 6, '2025-03-21', '12:00:00', 'Pendiente'),
(27, 9, 8, '2025-03-25', '14:30:00', 'Cancelada'),
(28, 10, 1, '2025-03-19', '09:00:00', 'Confirmada'),
(29, 10, 3, '2025-03-22', '15:15:00', 'Pendiente'),
(30, 10, 5, '2025-03-27', '10:45:00', 'Confirmada'),
(31, 8, 6, '2025-04-15', '08:30:00', 'Pendiente'),
(32, 1, 3, '2025-04-15', '15:00:00', 'Cancelada'),
(33, 12, 4, '2025-04-08', '12:00:00', 'Pendiente'),
(34, 7, 8, '2025-04-05', '12:00:00', 'Confirmada'),
(35, 6, 7, '2025-04-04', '11:45:00', 'Pendiente'),
(36, 8, 8, '2025-04-04', '09:00:00', 'Cancelada'),
(37, 2, 3, '2025-04-04', '17:15:00', 'Confirmada'),
(38, 8, 1, '2025-04-13', '11:15:00', 'Pendiente'),
(39, 12, 5, '2025-04-10', '10:30:00', 'Confirmada'),
(40, 4, 6, '2025-04-04', '14:00:00', 'Pendiente'),
(41, 18, 5, '2025-04-06', '08:30:00', 'Cancelada'),
(42, 7, 8, '2025-04-06', '08:30:00', 'Confirmada'),
(43, 20, 6, '2025-04-09', '14:45:00', 'Confirmada'),
(44, 6, 3, '2025-04-04', '14:45:00', 'Pendiente'),
(45, 13, 8, '2025-04-05', '16:15:00', 'Pendiente'),
(46, 18, 3, '2025-04-13', '09:15:00', 'Confirmada'),
(47, 1, 1, '2025-04-01', '10:15:00', 'Pendiente'),
(48, 13, 3, '2025-04-12', '16:00:00', 'Cancelada'),
(49, 20, 2, '2025-04-03', '08:30:00', 'Pendiente'),
(50, 2, 4, '2025-04-08', '15:00:00', 'Confirmada'),
(51, 10, 2, '2025-04-02', '13:15:00', 'Pendiente'),
(52, 5, 7, '2025-04-06', '09:30:00', 'Confirmada'),
(53, 3, 5, '2025-04-10', '11:00:00', 'Cancelada'),
(54, 17, 1, '2025-04-03', '10:30:00', 'Pendiente'),
(55, 14, 4, '2025-04-11', '15:30:00', 'Confirmada'),
(56, 9, 2, '2025-04-05', '16:45:00', 'Pendiente'),
(57, 11, 6, '2025-04-07', '10:45:00', 'Confirmada'),
(58, 15, 8, '2025-04-12', '09:00:00', 'Cancelada'),
(59, 19, 1, '2025-04-08', '14:30:00', 'Pendiente'),
(60, 16, 5, '2025-04-01', '08:00:00', 'Confirmada'),
(61, 3, 2, '2025-04-13', '17:00:00', 'Pendiente'),
(62, 8, 3, '2025-04-05', '17:30:00', 'Pendiente'),
(63, 20, 4, '2025-04-01', '12:45:00', 'Confirmada'),
(64, 7, 4, '2025-04-07', '15:15:00', 'Confirmada'),
(65, 14, 4, '2025-04-07', '12:30:00', 'Cancelada'),
(66, 17, 3, '2025-04-02', '09:30:00', 'Pendiente'),
(67, 16, 4, '2025-04-14', '14:30:00', 'Cancelada'),
(68, 6, 2, '2025-04-12', '14:45:00', 'Confirmada'),
(69, 9, 5, '2025-04-13', '12:45:00', 'Confirmada'),
(70, 11, 5, '2025-04-12', '15:00:00', 'Cancelada'),
(71, 8, 2, '2025-04-10', '15:45:00', 'Cancelada'),
(72, 16, 5, '2025-04-04', '12:30:00', 'Confirmada'),
(73, 18, 1, '2025-04-14', '16:30:00', 'Cancelada'),
(74, 11, 5, '2025-04-03', '10:30:00', 'Cancelada'),
(75, 12, 1, '2025-04-02', '08:45:00', 'Pendiente'),
(76, 10, 7, '2025-04-05', '11:00:00', 'Pendiente'),
(77, 8, 6, '2025-04-15', '08:30:00', 'Pendiente'),
(78, 1, 3, '2025-04-15', '15:00:00', 'Cancelada'),
(79, 12, 4, '2025-04-08', '12:00:00', 'Pendiente'),
(80, 7, 8, '2025-04-05', '12:00:00', 'Confirmada'),
(81, 6, 7, '2025-04-04', '11:45:00', 'Pendiente'),
(82, 8, 8, '2025-04-04', '09:00:00', 'Cancelada'),
(83, 2, 3, '2025-04-04', '17:15:00', 'Confirmada'),
(84, 8, 1, '2025-04-13', '11:15:00', 'Pendiente'),
(85, 12, 5, '2025-04-10', '10:30:00', 'Confirmada'),
(86, 4, 6, '2025-04-04', '14:00:00', 'Pendiente'),
(87, 18, 5, '2025-04-06', '08:30:00', 'Cancelada'),
(88, 7, 8, '2025-04-06', '08:30:00', 'Confirmada'),
(89, 20, 6, '2025-04-09', '14:45:00', 'Confirmada'),
(90, 6, 3, '2025-04-04', '14:45:00', 'Pendiente'),
(91, 13, 8, '2025-04-05', '16:15:00', 'Pendiente'),
(92, 18, 3, '2025-04-13', '09:15:00', 'Confirmada'),
(93, 1, 1, '2025-04-01', '10:15:00', 'Pendiente'),
(94, 13, 3, '2025-04-12', '16:00:00', 'Cancelada'),
(95, 20, 2, '2025-04-03', '08:30:00', 'Pendiente'),
(96, 2, 4, '2025-04-08', '15:00:00', 'Confirmada'),
(97, 10, 2, '2025-04-02', '13:15:00', 'Pendiente'),
(98, 5, 7, '2025-04-06', '09:30:00', 'Confirmada'),
(99, 3, 5, '2025-04-10', '11:00:00', 'Cancelada'),
(100, 17, 1, '2025-04-03', '10:30:00', 'Pendiente'),
(101, 14, 4, '2025-04-11', '15:30:00', 'Confirmada'),
(102, 9, 2, '2025-04-05', '16:45:00', 'Pendiente'),
(103, 11, 6, '2025-04-07', '10:45:00', 'Confirmada'),
(104, 15, 8, '2025-04-12', '09:00:00', 'Cancelada'),
(105, 19, 1, '2025-04-08', '14:30:00', 'Pendiente'),
(106, 16, 5, '2025-04-01', '08:00:00', 'Confirmada'),
(107, 3, 2, '2025-04-13', '17:00:00', 'Pendiente'),
(108, 8, 3, '2025-04-05', '17:30:00', 'Pendiente'),
(109, 20, 4, '2025-04-01', '12:45:00', 'Confirmada'),
(110, 7, 4, '2025-04-07', '15:15:00', 'Confirmada'),
(111, 14, 4, '2025-04-07', '12:30:00', 'Cancelada'),
(112, 17, 3, '2025-04-02', '09:30:00', 'Pendiente'),
(113, 16, 4, '2025-04-14', '14:30:00', 'Cancelada'),
(114, 6, 2, '2025-04-12', '14:45:00', 'Confirmada'),
(115, 9, 5, '2025-04-13', '12:45:00', 'Confirmada'),
(116, 11, 5, '2025-04-12', '15:00:00', 'Cancelada'),
(117, 8, 2, '2025-04-10', '15:45:00', 'Cancelada'),
(118, 16, 5, '2025-04-04', '12:30:00', 'Confirmada'),
(119, 18, 1, '2025-04-14', '16:30:00', 'Cancelada'),
(120, 11, 5, '2025-04-03', '10:30:00', 'Cancelada'),
(121, 12, 1, '2025-04-02', '08:45:00', 'Pendiente'),
(122, 10, 7, '2025-04-05', '11:00:00', 'Pendiente'),
(123, 3, 8, '2025-04-12', '12:15:00', 'Confirmada'),
(124, 10, 2, '2025-04-05', '17:15:00', 'Confirmada'),
(125, 6, 7, '2025-04-05', '10:45:00', 'Cancelada'),
(126, 1, 6, '2025-04-02', '17:45:00', 'Cancelada'),
(127, 11, 1, '2025-04-13', '16:15:00', 'Cancelada'),
(128, 17, 7, '2025-04-04', '13:30:00', 'Pendiente'),
(129, 17, 8, '2025-04-04', '08:00:00', 'Confirmada'),
(130, 5, 4, '2025-04-13', '10:15:00', 'Pendiente'),
(131, 4, 5, '2025-04-02', '16:00:00', 'Confirmada'),
(132, 9, 3, '2025-04-13', '10:00:00', 'Confirmada'),
(133, 7, 7, '2025-04-03', '08:00:00', 'Cancelada'),
(134, 12, 4, '2025-04-05', '12:00:00', 'Pendiente'),
(135, 3, 7, '2025-04-04', '14:00:00', 'Confirmada'),
(136, 12, 5, '2025-04-15', '09:00:00', 'Confirmada'),
(137, 1, 8, '2025-04-02', '17:00:00', 'Pendiente'),
(138, 9, 5, '2025-04-04', '14:45:00', 'Cancelada'),
(139, 17, 5, '2025-04-15', '16:15:00', 'Cancelada'),
(140, 14, 7, '2025-04-03', '08:45:00', 'Cancelada'),
(141, 18, 5, '2025-04-11', '14:15:00', 'Cancelada'),
(142, 10, 7, '2025-04-11', '10:15:00', 'Cancelada'),
(143, 20, 6, '2025-04-04', '09:15:00', 'Confirmada'),
(144, 8, 5, '2025-04-14', '16:00:00', 'Pendiente'),
(145, 2, 2, '2025-04-11', '14:45:00', 'Cancelada'),
(146, 20, 7, '2025-04-14', '15:15:00', 'Pendiente'),
(147, 20, 7, '2025-04-12', '16:45:00', 'Cancelada'),
(148, 8, 5, '2025-04-12', '14:45:00', 'Confirmada'),
(149, 4, 8, '2025-04-03', '13:15:00', 'Pendiente'),
(150, 6, 6, '2025-04-14', '11:45:00', 'Cancelada'),
(151, 6, 5, '2025-04-09', '15:30:00', 'Cancelada'),
(152, 10, 2, '2025-04-10', '09:45:00', 'Confirmada'),
(153, 6, 8, '2025-04-01', '11:45:00', 'Confirmada'),
(154, 8, 6, '2025-04-06', '13:15:00', 'Pendiente'),
(155, 14, 3, '2025-04-10', '17:00:00', 'Confirmada'),
(156, 18, 1, '2025-04-04', '14:45:00', 'Cancelada'),
(157, 15, 4, '2025-04-03', '17:15:00', 'Cancelada'),
(158, 17, 7, '2025-04-14', '11:00:00', 'Pendiente');
