<?php
//core
global $conection;
$link="";
function dbcon(){
 
  $host = 'localhost';
	$usr = 'root';
	$psw = 'the_reborn';
	$db = 'ghys';
	$conection = @mysqli_connect($host,$usr,$psw,$db);
	//$cnx = @mysqli_connect($host,$usr,$psw,$db);
	if(!$conection){
		echo "Error en la conexión,(ghyss) no existe....";
		exit();
	}
  return $conection;
  
  
  
}

function host(){
	$h = "http://".$_SERVER['HTTP_HOST']."/ghys/";
	return $h;
}

function hRoot(){
	$url = $_SERVER['DOCUMENT_ROOT']."/ghys/";
	return $url;
}

//parse string
function gstr(){
    $qstr = $_SERVER['QUERY_STRING'];
    parse_str($qstr,$dstr);
    return $dstr;
}

?>
