--PARTE 1

-- 1. Crear Base de datos posts 
CREATE DATABASE posts;

-- 2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripción.
CREATE TABLE post(id SERIAL PRIMARY KEY, nombre_de_usuario VARCHAR(70), fecha_de_creacion DATE, contenido VARCHAR(100), descripcion VARCHAR(300));

-- 3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela', '2020-11-22', 'asdasdas', 'qwerty');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Pamela', '2020-11-22', 'asdasdas', 'qwerty');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES('Carlos', '2020-11-22', 'qwerty', 'qwerty');

-- 4. Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD COLUMN titulo VARCHAR(70);

-- 5. Agregar título a las publicaciones ya ingresadas 
UPDATE post SET titulo='Lorem ipsum' WHERE id=1;
UPDATE post SET titulo='Lorem ipsum elite' WHERE id=2;
UPDATE post SET titulo='Lorem ipsum elite elementum' WHERE id=3;

-- 6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-11-22', 'qwerty', 'qwerty', 'qwerty');
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Pedro', '2020-11-22', 'asdasdas', 'asdasdas', 'asdasdas');

-- 7. Eliminar el post de Carlos
DELETE FROM post WHERE id=3;

-- 8. Ingresar un nuevo post para el usuario "Carlos" 
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Carlos', '2020-11-22', 'desdenama', 'lasadama', 'fermemerme');

-- PARTE 2

-- 9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(id SERIAL, fecha_y_hora_de_creacion TIMESTAMP, contenido VARCHAR(200), post_id INT, PRIMARY KEY(id), FOREIGN KEY(post_id) REFERENCES post(id));

-- 10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" 
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 14:50:11', 'asdadsasd', 1);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 15:00:23', 'asdasdasd', 1);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 15:10:49', 'zxczxczxc', 6);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 15:20:57', 'zxczcxzxc', 6);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 15:30:29', 'zxczxczxc', 6);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 15:40:06', 'zxczxczxc', 6);

-- 11. Crear un nuevo post para "Margarita" 
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES('Margarita', '2020-11-22', 'contenido de margarita', 'descripcion', 'titulo');

-- 12. Ingresar 5 comentarios para el post de Margarita
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 20:08:08', 'comentario de margarita 1', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 20:09:09', 'comentario de margarita 2', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 20:10:10', 'comentario de margarita 3', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 20:11:11', 'comentario de margarita 4', 7);
INSERT INTO comentarios(fecha_y_hora_de_creacion, contenido, post_id) VALUES('2020-11-22 20:12:12', 'comentario de margarita 5', 7);