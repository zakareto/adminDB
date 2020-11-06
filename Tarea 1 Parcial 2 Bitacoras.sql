myfirstdb

    create table bitacora (id_bitacora int (30) auto_increment primary key, id_articulo int (20), nombre_nuevo varchar (20), nombre_viejo varchar (20), precio_nuevo varchar (20), precio_viejo varchar (20), usuario varchar (30), fecha datetime, accion varchar (15))engine=innodb;
    
    
    create trigger insertar after insert
    on articulos
    for each row
    insert into bitacora (id_articulo, nombre_nuevo, precio_nuevo, usuario, fecha, accion) values (new.id_articulo, new.nombre_articulo, new.precio, user(), now(), 'Inserto');
    
    I
    
    
    create trigger actualizar after update
    on articulos
    for each row
    insert into bitacora (id_articulo, nombre_nuevo, nombre_viejo, precio_nuevo, precio_viejo, usuario, fecha, accion) values (old.id_articulo, new.nombre_articulo, old.nombre_articulo, new.precio, old.precio, user(), now(), 'Modifico');
    
    
    
    create trigger eliminar after delete
    on articulos
    for each row
    insert into bitacora (id_articulo, nombre_viejo, precio_viejo, usuario, fecha, accion) values (old.id_articulo, old.nombre_articulo, old.precio, user(), now(), 'Elimino');
    
  
    INSERT INTO articulos VALUES (1, "hot nuts", "20");
    UPDATE articulos SET nombre_articulo="Carlos V" WHERE id_articulo = 1;
    
    INSERT INTO articulos VALUES (2, "hot nuts", "20");
    DELETE from articulos WHERE id_articulo = 2;