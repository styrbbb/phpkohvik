<?php
		//***protseduuriline***//
		//sinu andmed
	$db_server = 'localhost';
	$db_andmebaas = 'kohvikud';
	$db_kasutaja = 'Thorian';
	$db_salasona = '8JyzR2EO6UOi';
		//ühendus andmebaasiga
	$yhendus = mysqli_connect($db_server, $db_kasutaja, $db_salasona, $db_andmebaas);
	
		//ühenduse kontroll
	if(!$yhendus){
		die('Ei saa ühendust andmebaasiga');
	}

?>