<?php
$nombre = $_POST['nombre']; 
    $email = $_POST['email']; 
    $tele = $_POST['tele']; 
    $cantidad = $_POST['cantidad']; 
    $ingreso = $_POST['ingreso']; 
    $egreso = $_POST['egreso']; 
    $mensaje = $_POST['mensaje']; 


    $host = "localhost";
    $user ="root";
    $pw = "";
    $bd= "hostel"; 
    $conn = new mysqli($host, $user, $pw, $bd);
    if($conn->connect_errno){
        echo "nuestro sitio experimenta fallos..";
        exit();
    }

    $conn->query("insert into hostel.contacto(id,nombre,email,tele,cantidad,ingreso,egreso,mensaje)VALUES(null,'$nombre','$email','$tele','$cantidad','$ingreso','$egreso','$mensaje') ");
    $conn->close();
    header ('Location: index.html');

?>