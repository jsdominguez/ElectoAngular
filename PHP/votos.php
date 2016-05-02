<?php
$objDatos = json_decode(file_get_contents("php://input"));

$conn = mysqli_connect('localhost', 'root','','elecciones');
$result = $conn->query("select codigo,v.candidato,foto,partido,count(v.candidato) as votos from candidatos c, votaciones v where c.candidato=v.candidato group by candidato");
$myArray = array(); //declaramos arreglo para que se guarden todo los datos

while($rs = $result->fetch_array())
{
  $myArray[] = $rs; //todos los datos se almacenan en un arreglo que ya hemos declarado
}

$salida = json_encode($myArray); //convertimos en formato json todos los datos que guardamaos en el arreglo

echo $salida; //imprimimos los datos que esta en formato json la cual angular los mostrara

 ?>
