CREATE database Qliqs_Login;
use Qliqs_Login;

CREATE table USUARIOS (
correo varchar (50) primary key,
id_usuario varchar (50));

CREATE TABLE SEGURIDAD (
num_tarjeta int,
correo varchar (50),
contraseña varchar (50),
ccv int,
foreign key (num_tarjeta) references METODO_PAGO (num_tarjeta),
foreign key (correo) references USUARIOS (correo));

CREATE TABLE METODO_PAGO (
num_tarjeta int primary key,
titular_tarjeta varchar (70),
fecha_caducidad date);

select * from seguridad;
select * from usuarios;
select * from metodo_pago;



