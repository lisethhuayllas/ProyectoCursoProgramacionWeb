<?php
     require_once 'conexion.php';
     session_start();

    if (isset($_SESSION['nombre']))
    {
        $nombre = htmlspecialchars($_SESSION['nombre']);
        $apellido = htmlspecialchars($_SESSION['apellido']);
        $id_usuario = htmlspecialchars($_SESSION['id_usuario']);

        echo "
         Tu id es: $id_usuario
         <p align=right>User:$nombre $apellido</p>
         <p align=right> <a href='logout.php'><input type='button' value='Cerrar Sesión'></a></p>

         "; 


      echo <<<_END
      <form action="continue.php" method="post">
      <pre>

        <h2>   Registrar Tarea</h2>
        Nombre  <input type="text" placeholder="nombre curso" name="nombre"><br>
        Contenido <input type="text" placeholder="contenido" name="contenido"><br>
        Fecha de Registro <input type="date" name= "fecha_registro"><br>
        Fecha de Vencimiento <input type="date" name= "fecha_vencimiento"><br>
        <input  type="submit" value="INGRESAR NUEVO REGISTRO" name="enviar">


        <a href='mostrartareas.php'><input type="button" value="Ver todas las tareas"></a>
       
        <a href='archivar.php'><input  type="button" value="Ver tareas archivadas"></a>

        <a href='mostrartareas.php'><input type="button" value="Ver tareas pendientes"></a>


     </pre> 
    </form>
    _END;


if(isset($_POST['enviar']))
   {

      $nombre=$_POST['nombre'];
      $contenido=$_POST['contenido'];
      $fr=$_POST['fecha_registro'];
      $fv=$_POST['fecha_vencimiento'];
     

      if( $nombre=="" || $contenido=="" || $fr=="" || $fv=="" )
      {
         echo "<b><FONT COLOR=red>ERROR...Registre todos los campos</FONT></b>";
      }
      else{

      $conexion->query("INSERT INTO tareas( id_usuario, nombre,contenido,fecha_registro, fecha_vencimiento) values ( '$id_usuario','$nombre','$contenido','$fr', '$fv')");
      echo"Se ha registrado la nueva tarea";
        }

    }
  

   }              

      
?>