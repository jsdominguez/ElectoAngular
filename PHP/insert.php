<?php
$objDatos = json_decode(file_get_contents("php://input"));
$conn = mysqli_connect('localhost', 'root','','elecciones');
if(is_numeric($objDatos->dni))
{
  $conn->query("insert into votaciones(dni,candidato) values('$objDatos->dni','$objDatos->candidato')");
}
else
{
  echo "DNI Invalido , Porfavor Ingrese su DNI nuevamente";
}

 ?>
