<?php
// lokal
/*
$dbhost="localhost";
$dbname="biologi";
$dbuser="rusumu";
$dbpass="12345";
*/

//internet 
$dbhost="databases.000webhost.com";
$dbname="id1464832_biologi";
$dbuser="id1464832_rusiamee";
$dbpass="siami_4321";

try
{ 
$conn = new PDO("mysql:host={$dbhost};dbname={$dbname}",$dbuser,$dbpass);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
}

catch(PDOException $pe)
{
die('Maaf, gangguan koneksi: ' .$pe->getMessage());
}
 
?>
