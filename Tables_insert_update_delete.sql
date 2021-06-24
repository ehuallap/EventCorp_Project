use flask;

INSERT INTO eventos (nombre, fecha, hora, modalidad, acceso, organizador, Nro_eventos_inscrito)
VALUES ('Seminario Java', '9/06/21', '15:00 hr', 'Virtual', 'meet.com', 'UNSA', 25);

INSERT INTO eventos (nombre, fecha, hora, modalidad, acceso, organizador, Nro_eventos_inscrito)
VALUES ('Grupo de estudio Python', '9/06/21', '18:00 hr', 'Presencial', 'Av.abc 205', 'UNSA', 15);

INSERT INTO eventos (nombre, fecha, hora, modalidad, acceso, organizador, Nro_eventos_inscrito)
VALUES ('Semana de la Computación', '30/06/21', '8:00 hr', 'Virtual', 'meet.com','UNSA', 300);

INSERT INTO eventos (nombre, fecha, hora, modalidad, acceso, organizador, Nro_eventos_inscrito)
VALUES ('Seminario Java', '9/06/21', '15:00 hr', 'Virtual', 'zoom.com', 'Instituto', 15);

INSERT INTO eventos (nombre, fecha, hora, modalidad, acceso, organizador, Nro_eventos_inscrito)
VALUES ('Seminario Java', '9/06/21', '15:00 hr', 'Virtual', 'zoom.com', 'UNSA', 300);

INSERT INTO usuarios (apellidos, nombre, correo, inscrito)
VALUES ('Hualla Puelles', 'Erick Klendort', 'ehuallap@unsa.edu.pe','3');

INSERT INTO usuarios (apellidos, nombre, correo, inscrito)
VALUES ('Zavalaga Horosco', 'Rushell Vanessa', 'rzavalaga@unsa.edu.pe','4');

INSERT INTO usuarios (apellidos, nombre, correo, inscrito)
VALUES ('Rodriguez Pumacayo', 'Ricardo Alexander', 'rrodriguezp@unsa.edu.pe','1');

INSERT INTO usuarios (apellidos, nombre, correo, inscrito)
VALUES ('Picha Chañi', 'Gleddynuri Marbel', 'gpichac@unsa.edu.pe','6');

INSERT INTO usuarios (apellidos, nombre, correo, inscrito)
VALUES ('Aliaga Accostupa', 'Eduardo Julio', 'ealiaga@unsa.edu.pe','5');



UPDATE usuarios
SET inscrito = '10'
WHERE idUsuarios = 2;

UPDATE usuarios
SET inscrito = '5'
WHERE idUsuarios = 1;

DELETE FROM usuarios WHERE idUsuarios = 1;





UPDATE eventos
SET nombre = 'Seminario Python', hora = '12:00 hr'
WHERE idEventos = 4;

UPDATE eventos
SET nombre = 'Seminario C++', hora = '14:00 hr'
WHERE idEventos = 2;

UPDATE eventos
SET nombre = 'Seminario HTML', hora = '17:00 hr'
WHERE idEventos = 1;


DELETE FROM eventos WHERE idEventos = 1;
DELETE FROM eventos WHERE idEventos = 2;
DELETE FROM eventos WHERE idEventos = 3;


