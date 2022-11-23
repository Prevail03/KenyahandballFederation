<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{
	error_reporting(E_ALL ^ E_DEPRECATED);
	
	require_once('Team.php');
	require_once('Database1.php');
	$photos = NULL;
	
		$DB = new DataBase();
		$photos = $DB->getPhotos();
		if($photos == 0 || $photos == "error" || sizeof($photos) == 0){
			$photos = NULL;
		}
		
	
?>

<html>
	<head>
	<title>Kenya Handball Federation</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <link href="admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="admin/assets/css/core.css" rel="stylesheet" type="text/css" />
  <link href="admin/assets/css/components.css" rel="stylesheet" type="text/css" />
  <link href="admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
  <link href="admin/assets/css/pages.css" rel="stylesheet" type="text/css" />
  <link href="admin/assets/css/menu.css" rel="stylesheet" type="text/css" />
  <link href="admin/assets/css/responsive.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
  <script src="assets/js/modernizr.min.js"></script>
</head>
<body>

<?php include('admin/includes/topheader.php');?>
<?php include('admin/includes/leftsidebar.php');?>
<div class="content-page">
	<div class="content">
 <!--<div class="heading" > <a href="home.php" ><img style="max-width:100%; border-radius: 50%; " src="images\logo\khf1.jpg" alt="images/khflogo" height="200" width="200"></a>Kenya Handball Federation</div>-->
	</style>
			<form class="form-horizontal" action="AddPhoto.php" method="post" enctype="multipart/form-data">
			<fieldset>
			
			<!-- Form Name -->
			<legend>Team Photo</legend>
			<hr>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" > Team Name</label>  
			  <div class="col-md-4">
			  <input name="name" type="text" placeholder="Name" class="form-control input-md" required="">
			    
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" >Image</label>  
			  <div class="col-md-4">
			 	 <input id="brandImage" name="teamPhoto" accept="image/*" type="file" class="form-control" required="">
			  </div>
			</div>
			
			<!-- Button (Double) -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="anmelden"></label>
			  <div class="col-md-8">
			    <input type="submit" value="Add Team" name="submit" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">
			  </div>
			</div>
			
			</fieldset>
		</form>
		
		<form class="form-horizontal" action="AddTeam.php" method="post" enctype="multipart/form-data">
			<fieldset>
			
			<!-- Form Name -->
			<legend>Team Logo and Other Details</legend>
			<hr>
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="name">Gender</label>  
			  <div class="col-md-4">
			 	 <input name="gender" type="text" placeholder="Male/Female" class="form-control input-md" required="">
		      </div>
			</div>
			
              <div class="form-group">
	              <label class="col-md-4 control-label" for="name">Team Name</label>  
				  <div class="col-md-4">
				  	<select name="brand" class="form-control">
					  	<?php 
					  		foreach ($photos as $p){
					  			echo "<option value='$p->ID'>$p->Name</option>";// to get aray with team name
					  		}
					  	?>
			  		</select>
			      </div>
              </div>
           	<br/>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label">Head Coach(es)</label>  
			  <div class="col-md-4">
			 	 <input name="headCoach" type="text" placeholder="Jane/ John Doe" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" >Year Established</label>  
			  <div class="col-md-6">
			  	<input name="established" type="date" class="form-control " required="">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" >League(s)</label>  
			  <div class="col-md-6">
			  	<input name="leagues" type="text" placeholder="KHF/NASOKUSA" class="form-control input-md" required="">
			  </div>
			</div>
			
			<div class="form-group">
			  <label class="col-md-4 control-label" >Team Logo</label>  
			  <div class="col-md-4">
			 	 <input id="imageUpload" name="imageUpload" type="file" class="form-control" required="">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" >Location</label>  
			  <div class="col-md-6">
			  	<input name="location" type="text" placeholder="Kaloleni Grounds, Jogoo Rd" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" >Game Style</label>  
			  <div class="col-md-6">
			  	<input name="gameStyle" type="text" placeholder="Systems, Speed, Defensive, Offensive" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" >Achievements</label>  
			  <div class="col-md-6">
			  	<input name="achievements" type="text" placeholder="Best Accollades" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label">Goals/Objecives</label>  
			  <div class="col-md-6">
			  	<input name="win" type="text" placeholder="Objectives" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="col-md-4 control-label" >Losing %</label>  
			  <div class="col-md-6">
			  	<input name="loss" type="text" placeholder="loss %" class="form-control input-md" required="">
			  </div>
			</div>
			
			<!-- Textarea -->
			<div class="form-group">
			  <label class="col-md-4 control-label" >Wining</label>
			  <div class="col-md-4">                     
			    <input type="text" name="goals" class="form-control input-md" required=""> 
			  </div>
				</div>
				
				<!-- Button (Double) -->
			<div class="form-group">
			  <label class="col-md-4 control-label" for="anmelden"></label>
			  <div class="col-md-8">
			    <input type="submit" value="Add" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">
			  </div>
			</div>
			</fieldset>
		</form>
		
		<hr>	
		<a href='Admin/dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Dashboard</a>
					</div>
		<?php require_once('admin/includes/footer.php'); } ?>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </div>
</div>
	</body>
</html>