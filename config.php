<?php
		//***protseduuriline***//
		//sinu andmed
	$db_server = 'localhost';
	$db_andmebaas = 'kohvikud';
	$db_kasutaja = 'tperk';
	// $db_salasona = '8JyzR2EO6UOi';
	$db_salasona = 'qLx@OlKMT-Ucev34';
		//ühendus andmebaasiga
	$yhendus = mysqli_connect($db_server, $db_kasutaja, $db_salasona, $db_andmebaas);
	
		//ühenduse kontroll
	if(!$yhendus){
		die('Ei saa ühendust andmebaasiga');
	}

?>