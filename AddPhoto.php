<?php
	error_reporting(E_ALL ^ E_DEPRECATED);
	require_once('Photo.php');
	require_once('Database1.php');
	session_start();
	
		$teamName = $_POST['name'];
		$FileName = $_FILES['teamPhoto']['name'];
		$tmp_name = $_FILES['teamPhoto']['tmp_name'];
		
		$location = "TeamPhoto/";
		
		if(move_uploaded_file($tmp_name,$location.$teamName.".jpg")){
			$ImageURL =$location.$teamName.".jpg";
			$DB = new Database();
			$photo = new Photo(0, $teamName, $ImageURL);
			$DB->addPhoto($photo);
			header('Location: teamDetails.php');
		}
	
?>

