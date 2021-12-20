<?php 
require_once 'conexion.php';


$id=$_GET['id'];

$query="SELECT *FROM tareas WHERE id='$id' ";
$resultado = mysqli_query($conexion, $query);

$row=mysqli_fetch_array($resultado);

 ?>

<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title>Modificar</title>
</head>
<body>

   <form action="update.php" method="post">
    
         <h2>Editar datos Tarea</h2>
         <pre>
         <input type="hidden" name="id" value="<?php echo $row['id'] ?>">
         <b>Nombre_Curso:</b><?php echo $row['nombre'] ?><br>
         <b>Contenido</b> <input type="text" placeholder="contenido" name="contenido" value="<?php echo $row['contenido'] ?>" ><br>
         <b>Fecha de Registro</b> <input type="date" name= "fecha_registro" value="<?php echo $row['fecha_registro'] ?>" ><br>
         <b>Fecha de Vencimiento</b> <input type="date" name= "fecha_vencimiento" value="<?php echo $row['fecha_vencimiento'] ?>" ><br>
         <b>Estado de Tarea</b> <input type="radio" name="estado" value="terminado" /> terminado
                              <input type="radio" name="estado" value="en proceso" /> en proceso
   


        <input type="submit" value="Modificar" name="btnactualizar"><br>
     </pre> 


</body>
</html>
