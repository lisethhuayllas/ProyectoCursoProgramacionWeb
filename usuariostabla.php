<?php 

    require_once 'conexion.php';
 
    $query = "CREATE TABLE usuarios (
        id_usuario SMALLINT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(32) NOT NULL,
        apellido VARCHAR(32) NOT NULL,
        username VARCHAR(32) NOT NULL UNIQUE,
        password VARCHAR(255) NOT NULL,
        PRIMARY KEY(id_usuario)
    )";

    $result = $conexion->query($query);
    if (!$result) die("Error fatal");
?>