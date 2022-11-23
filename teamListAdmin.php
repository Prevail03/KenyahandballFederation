<?php
session_start();
include('Admin/includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:Admin/index.php');
}
else{   
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
		<link href="Admin/assets/css/core.css" rel="stylesheet" type="text/css" />
	    <link href="Admin/assets/css/components.css" rel="stylesheet" type="text/css" />
	    <link href="Admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
	    <link href="Admin/assets/css/pages.css" rel="stylesheet" type="text/css" />
	    <link href="Admin/assets/css/menu.css" rel="stylesheet" type="text/css" />
	    <link href="Admin/assets/css/responsive.css" rel="stylesheet" type="text/css" />
	    <link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
	    <script src="Admin/assets/js/modernizr.min.js"></script>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	</head>
	<body>
	<?php require_once('Admin/includes/topheader.php');?>
	<?php include('Admin/includes/leftsidebar.php');?>
	
	<div class="content-page">
	<div class="content">
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
												<form action='DetailsAdmin.php' method='post'>
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
    	<a href='Admin/dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Dashboard</a>
					</div>
					</div>
	</body>

	<?php require_once('Admin/includes/footer.php');?>
	<script>
          var resizefunc = [];
      </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script> 
</html>
<?php } ?>