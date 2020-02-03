<?php
require'Geocoding.php';
//require'conexion.php';
use myPHPnotes\Geocoding;
$geo = new Geocoding("AIzaSyA20jxyoX7p5SzBJvu-5-gcFIe_QaUH-9Q");
//funcion que convierte una direccion en lat y long
$coordinates=$geo->getCoordinates('Chivilcoy 482, González Catán, Provincia de Buenos Aires');
var_dump($coordinates);