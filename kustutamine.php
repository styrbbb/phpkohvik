<?php include('config.php'); ?>
<?php

	if(!empty($_GET['id'])){
		//kustutamise päringud
		$id = $_GET['id'];
		$kustuta_paring = "DELETE FROM hinnangud WHERE id='$id'";
		$kustuta_valjund = mysqli_query($yhendus, $kustuta_paring);
		if($kustuta_valjund){
			echo "Rida kustutatud!";
			echo '<META HTTP-EQUIV="Refresh" Content="0; URL='.$_SERVER['PHP_SELF'].'">';
		} else {
			echo "Viga kustutamisel!";
		}
        header("Location: admin.php");
	}
	
?>
</table>