<?php 
    require_once 'conexion.php';

    $query = "CREATE TABLE tareas (
        id SMALLINT NOT NULL AUTO_INCREMENT,
        id_usuario SMALLINT, 
        nombre VARCHAR(40) NOT NULL,
        contenido VARCHAR(32) NOT NULL,
        fecha_registro DATE,
        fecha_vencimiento DATE,
        estado VARCHAR(15),

        PRIMARY KEY(id)
    )";



    $result = $conexion->query($query);
    if (!$result) die("Error fatal");
?>