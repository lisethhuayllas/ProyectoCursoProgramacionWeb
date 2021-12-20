<?php 
    require_once 'conexion.php';
    
    session_start();

    if(isset($_SESSION['nombre']))
    {
      header("Location: continue.php" );
    }
    
    if(!isset($_SESSION['nombre']))
    {
    session_destroy();
    }

    if (isset($_POST['username'])&&
        isset($_POST['password']))
    {
        $un_temp = mysql_entities_fix_string($conexion, $_POST['username']);
        $pw_temp = mysql_entities_fix_string($conexion, $_POST['password']);
        $query   = "SELECT * FROM usuarios WHERE username='$un_temp'";
        $result  = $conexion->query($query);

        if (!$result) die ("Usuario no encontrado");
        elseif ($result->num_rows)
        {
            $row = $result->fetch_array(MYSQLI_NUM);
            $result->close();

            if (password_verify($pw_temp, $row[4])) 
            {

                session_start();
                $_SESSION['id_usuario']=$row[0];
                $_SESSION['nombre']=$row[1];
                $_SESSION['apellido']=$row[2];

                echo htmlspecialchars("Hola! $row[1] $row[2]: has ingresado como '$row[3]'");

                die ("<p><a href='continue.php'> 👉Click para continuar</a></p>");


                header("Location: continue.php");
            }
            else {
                echo "<center>Usuario o contraseña incorrecto <p><a href='signup.php'>👉Registrarse</a></p></center>";
            }

        }
        else {
      echo "<center>Usuario  o contraseña incorrecto <p><a href='signup.php'>Registrarse</a></p></center>";
      }   
    }
    else
    {
      echo <<<_END
      
      <center><h1>Iniciar sesión</h1>
      <img src="user1.png"  width="120" height="120">
      <form action="index.php" method="post"><pre>
      <input type="text" placeholder="Usuario" name="username"><br>
      <input type="text" placeholder="Contraseña" name="password"><br>
      <input type="submit" value="INGRESAR" >
      <h4>Aún no estás registrado(a)?</h4><a href='signup.php'><input type="button" value="Registrarse"></a>
      </form>
      _END;
    }

    $conexion->close();

    function mysql_entities_fix_string($conexion, $string)
    {
        return htmlentities(mysql_fix_string($conexion, $string));
      }
    function mysql_fix_string($conexion, $string)
    {
        return $conexion->real_escape_string($string);
      }  
?>