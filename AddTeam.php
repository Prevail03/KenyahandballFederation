<?php
	error_reporting(E_ALL ^ E_DEPRECATED);
	require_once('Photo.php');
	require_once('Database1.php');
	session_start();
	

		$gender = $_POST['gender'];
		$teamName = $_POST['brand'];
		$headCoach = $_POST['headCoach'];
		$established = $_POST['established'];
		$leagues = $_POST['leagues'];
		$tmp_name = $_FILES['imageUpload']['tmp_name'];
		$location = $_POST['location'];
		$gameStyle = $_POST['gameStyle'];
		$achievements = $_POST['achievements'];
		$win = $_POST['win'];
		$loss = $_POST['loss'];
		$goals = $_POST['goals'];
		

		$target = "TeamLogo/";

		if(move_uploaded_file($tmp_name,$target.$teamName.$gender.".jpg")){
			$ImageURL =$target.$teamName.$gender.".jpg";
			$DB = new Database();
			$team = new Team(0, $gender, $teamName, $headCoach, $established, $leagues, $ImageURL, $location, $gameStyle, $achievements, $win, $loss, $goals);
			$DB->addTeam($team);
			header('Location: teamDetails.php');
		}
		
?>

