<?php
	error_reporting(E_ALL ^ E_DEPRECATED);
	require_once('Database1.php');
	$team = NULL;
	$DB = NULL;
		$DB = new Database();
		$team = $DB->getTeamById($_POST['id']);
		include 'DBController.php';
		$db_handle = new DBController();
?>


<html>
	<head>
	    	<title>Kenya Handball Federation</title>
		<link rel="stylesheet" type="text/css" href="Details.css">
		<link rel="stylesheet" href="bootstrap-theme.css">
		<link rel="stylesheet" href="bootstrap-theme.min.css">
		<link href="main.css" rel="stylesheet" type="text/css">
		<link href="home.css" rel="stylesheet" type="text/css">
		<meta name="viewport" content="width=device-width, initial-scale=1" /> 
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	</head>
	<body>
	<?php include('includes/header.php');?>
	<br><br><br><br><br>
	<div class="content-page">
	<div class="content">	
	<br><br><br><br>
	
	<style type="text/css">
	</style>
	<font face="Times New Roman" size="4">
		<div class="container">
			<div class="row">
		   <div class="col-xs-4 item-photo">
		                    <img style="max-width:50%;  " class="rounded-circle" src="<?php echo $team->ImageUrl?>" />
		                </div>                             
						<img style="max-width:100%;"src="<?php echo $DB->getPhotoById($team->TeamID)->ImageUrl?>" />
		                <div class="col-xs-9">
		                    <ul class="menu-items">
		                        <li class="active">Team Profile</li>
		                    </ul>
		                    <div style="width:100%;border-top:1px solid silver">
		                        <p style="padding:15px;">
		                            <small>Game Style:  <?php echo $team->GameStyle?></small>
		                        </p>
		                        <small>
		                        <ul type="none">
		                            <li>Team Name:   <?php echo $DB->getPhotoById($team->TeamID)->Name?></li>
		                            <li>Gender:   <?php echo $team->Gender?></li>
		                            <li>Head Coach:   <?php echo $team->HeadCoach?></li>
		                            <li>Year Established:   <?php echo $team->Established?></li>
		                            <li>Leagues:   <?php echo $team->Leagues?></li>
		                            <li>Location/Training Grounds:   <?php echo $team->Location?></li>
		                            <li>Goals/Objective:   <?php echo $team->Goals?></li>
		                            <li>Achievement(s):   <?php echo $team->Achievements?></li>
		                            
		                        </ul>  
		                        </small>
		                    </div>
		                </div>		
			</div>
		</div>
	
		<div id="gridview">
        <div class="heading">Player Profiles</div>
<?php
$value=  $DB->getPhotoById($team->TeamID)->Name;
$query = $db_handle->runQuery("SELECT * FROM profile WHERE name='$value' ORDER BY image_text ASC");
if (! empty($query)) {
    foreach ($query as $key => $value) {
        ?>  
            <div class="image">
            <?php 
                if(file_exists($query[$key]["path"])) 
                { 
                
            ?>
            <img src="<?php echo $query[$key]["path"] ; ?> " height="50" />

            <?php 
                } else { 
            ?>
            <img src="gallery/default.jpeg" />
            <?php
                }
            ?>
            </div>
<?php
    }
}
?>
<br>
		<a href='TeamsList.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Back</a>
		<?php require_once('includes/footer.php');?> 
		</font>
	</body>
</html>