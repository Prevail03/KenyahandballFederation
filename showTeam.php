<?php
include('functions.php');
 if (!isLoggedIn()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
  }
include 'DBController.php';
$db_handle = new DBController();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Kenya Handball Federation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="main.css" rel="stylesheet" type="text/css">
<link href="home.css" rel="stylesheet" type="text/css">

</head>

<body>
    <style type="text/css">body {background-color:  #34495e;} 
li{
            text-align: center;
            color: white;
        }
</style>
    <?php require_once('header.php');?>
<a href='home2.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Home</a>
    <div id="gridview">
        <div class="heading">Team Profiles</div>
<?php
$query = $db_handle->runQuery("SELECT * FROM teamdata ORDER BY team ASC");
if (! empty($query)) {
    foreach ($query as $key => $value) {
        ?>  
            <div class="image">
            <?php 
                if(file_exists($query[$key]["path"])) 
                { 
                
            ?>
            <img src="<?php echo $query[$key]["path"] ; ?> " style="width:80%" width="1080px" height="1080px"  />
            <ul type="none">
            <li>Name:  <?php echo $query[$key]["team"] ; ?></li>
            <li>Coach: <?php echo $query[$key]["headCoach"] ; ?></li>
            <li>Gender:  <?php echo $query[$key]["gender"] ; ?></li>
            <li>Location: <?php echo $query[$key]["location"] ; ?></li>
            <li>Established: <?php echo $query[$key]["established"] ; ?></li>
            </ul>

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
    </div>
 <?php require_once('footer.php');?>
</body>
</html>