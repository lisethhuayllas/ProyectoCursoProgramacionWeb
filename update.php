<?php
include("conexion.php");

      $id = $_POST['id'];

      $contenido=$_POST['contenido'];
      $fr=$_POST['fecha_registro'];
      $fv=$_POST['fecha_vencimiento'];
      $estado_tarea=$_POST['estado'];

   $query="UPDATE tareas SET  contenido='$contenido', fecha_registro='$fr', fecha_vencimiento='$fv', estado='$estado_tarea' WHERE id='$id'";
   $resultado = mysqli_query($conexion, $query);

   if($resultado){
   	header("Location: mostrartareas.php");
   }

  ?>