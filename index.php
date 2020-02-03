<?php
require'Geocoding.php';
require'conexion.php';
use myPHPnotes\Geocoding;
$geo = new Geocoding("AIzaSyA20jxyoX7p5SzBJvu-5-gcFIe_QaUH-9Q");
//funcion que convierte una direccion en lat y long

$conexion->query("SET NAMES 'utf8'");
 $marcar= "SELECT direccion FROM prueba";

 $result=$conexion->query($marcar);
 $marcax=$result->fetch_assoc();
 $direccion=$marcax['direccion'];


 
$coordinates=$geo->getCoordinates($direccion);
var_dump($coordinates);
//selecciona todas las direcciones cargadas

 //$result= $conexion->query($marcar); 

?>
