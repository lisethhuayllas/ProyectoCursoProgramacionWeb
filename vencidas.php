<?php include("conexion.php");

session_start();

$id_usuario =$_SESSION['id_usuario'];

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Tareas Vencidas</title>
</head>
<body>

<h2>Tareas Vencidas</h2>
<table border="1" cellspacing="0" cellpadding="3" >
<thead>
  <tr>
        <th><b>Nombre</b></th>
        <th><b>Contenido</b></th>
        <th><b>Fecha_de Registro</b></th>
        <th><b>Fecha de Vencimiento</b></th>
        <th><b>Estado Tarea</b></th>      
    </tr>
</thead>
<tbody>

<?php
$query="SELECT *FROM tareas WHERE estado ='vencido' and id_usuario=$id_usuario ";
$result = mysqli_query($conexion, $query);

while($row = mysqli_fetch_array($result)){ ?>

   <tr>
     <td><?php echo $row['nombre'] ?></td>
     <td><?php echo $row['contenido'] ?></td>
     <td><?php echo $row['fecha_registro'] ?></td>
     <td><?php echo $row['fecha_vencimiento'] ?></td>
     <td><?php echo $row['estado'] ?></td>
   </tr>

<?php } ?>

</tbody>  
</table>
<a href="continue.php">Regresar</a>

</body>
</html>