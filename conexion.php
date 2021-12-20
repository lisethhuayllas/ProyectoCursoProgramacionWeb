<?php 

    $hn = 'localhost';
    $db = 'proyecto';
    $un = 'root';
    $pw = '';
    $port = 3360;

$conexion=mysqli_connect($hn, $un, $pw, $db, $port);
if($conexion->connect_error) die("Error fatal");

?>