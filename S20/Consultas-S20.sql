/*seleccion de todos los datos del usuario*/
select * from usuario;
/*seleccion de la columna u_nombre */
select u_nombre FROM usuario
/*seleccion de columna nombre y apellido*/
select u_nombre,u_apellidos FROM usuario;
/*seleccion de nombre, apellido,tipo usuario*/
select u_nombre,u_apellidos,tipo_usuario FROM usuario,tipo_usuario;
/*seleccion nombre, apellido,tipo usuario usando where*/
select u_nombre,u_apellidos,tipo_usuario FROM usuario,tipo_usuario WHERE usuario.tipo_id=tipo_usuario.tipo_id;
/*seleccion de todos los datos de usuario segun el login*/
select * FROM usuario WHERE usuario.u_login="44806713";

4. TRABAJO EN CLASE 
Con la ayuda de su docente realice las siguientes consultas sobre la base de datos bd_ventas
• Seleccione el nombre y apellido de todos los usuarios
select usuario_nombre,usuario_apellido FROM usuario;

• Seleccione todos los nombres y apellidos de los proveedores registrados
select proveedores_nombre,proveedores_apellido FROM proveedores;

• Seleccione el nombre, descripción y precio de todos los productos registrados
SELECT `producto_nombre`, `producto_descripcion`, `producto_precio` FROM `producto`;
 
 
 






