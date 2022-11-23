<?php
	error_reporting(E_ALL ^ E_DEPRECATED);
	
	require_once('Database1.php');
	require_once('Team.php');
	session_start();
	$teams = NULL;
	$DB = NULL;
	
		$DB = new DataBase();
		
		$DB = new DataBase();
		$teams = $DB->getTeamsAsend();
		if($teams == 0 || $teams == "error" || sizeof($teams)==0){
			$teams = NULL;
		}
	
?>
<html>
	<head>
		<title>Kenya Handball Federation</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" type="text/css" href="teamList.css">
		<link rel="stylesheet" href="bootstrap-theme.css">
		<link rel="stylesheet" href="bootstrap-theme.min.css">
		
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	</head>
	<body>
	<?php include('includes/header.php');?>
	<br><br><br><br><br>
	<div class="content-page">
	<div class="content">
	<img src='khfn.jpg' alt='images/khflogo' class='rounded-circle' height='50'><br><br>
<h1><strong>KENYA HANDBALL FEDERATION NATIONAL LEAGUES' TEAMS 2021/2022</strong></h1>
	    <style type="text/css">
        img
	     {border-radius: 50%;}	
</style>
	<font face="Times New Roman" size="4">
		<div class="container">
			<div class="row">
				<?php 
					if($teams != NULL){
						foreach ($teams as $team){
							echo "
				
									<div class='col-lg-3 col-md-3 col-sm-6 col-xs-12'>
										<div class='my-list'>
											<img src='$team->ImageUrl' alt='dsadas ;' />
											<h3>".$DB->getPhotoById($team->TeamID)->Name."</h3>
											<span>Training G.:</span>
											<span class='pull-right'>$team->Location</span>
											<div class='offer'><span>Head Coach</span>$team->HeadCoach</div>
											<div class='detail'>
												<p>Click 'Details' for more info</p>
												<img src='$team->ImageUrl' alt='dsadas' />
												<form action='Details.php' method='post'>
													<input type='hidden' value='$team->ID' id='id' name='id'>
													<input type='submit' value='Details' class='btn btn-info'>
												</form>
											</div>
										</div>
									</div>
								";
							}
						}
				?>
				
			</div>
    	</div>
    	</font>
    	<?php require_once('includes/footer.php');?> 
					</div>
					</div>
	</body>
</html>