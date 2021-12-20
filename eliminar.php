<?php 
    include ('conexion.php');

if(isset($_GET['id'])){

    $id=$_GET['id'];

    $query="DELETE FROM tareas WHERE id=$id";

    $result = mysqli_query($conexion, $query);

    if(!$result){
        die("Consulta Fallida");
    }
    else{
        header("Location: mostrartareas.php");
    }
}

 ?>