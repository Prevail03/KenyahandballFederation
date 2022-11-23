<?php
include('functions.php');
 if (!isLoggedIn()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
  }
require('db.php');
$status = "";
if(isset($_POST['new']) && $_POST['new']==1)
{
$trn_date = date("Y-m-d H:i:s");
$hometeam =$_REQUEST['home'];
$scorehome = $_REQUEST['scoreh'];
$awayteam = $_REQUEST['away'];
$scoreaway = $_REQUEST['scoreA'];
$ins_query="insert into results (`date`,`hometeam`,`scorehome`,`awayteam`,`scoreaway`) values ('$trn_date','$hometeam','$scorehome','$awayteam','$scoreaway')";
mysqli_query($con,$ins_query) or die(mysql_error());
$status = "New Results Inserted Successfully.</br>";
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kenya Handball Federation </title>
	<link rel="stylesheet" type="text/css" href="home.css">
	<link rel="stylesheet" type="text/css" href="main.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<?php require_once('header.php');?>
<style type="text/css">body{background-color: #2f3542;} img{border-radius: 50%;}</style>
<div class="form">
<a href='dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Dashboard</a>
<a href='leagueAdmin.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">League Standings</a>
<a href='view.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Results</a>
<a href='logout.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Logout</a>
<div>
	<div style="color: white">
<h1>Enter New Results</h1>
<form name="form" method="post" action=""> 
<input type="hidden" name="new" value="1" />
<p><label>Home Team&nbsp&nbsp&nbsp</label><input type="text" name="home" placeholder="Home Team" required /></p><br>
<p><label>Scores&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input type="text" name="scoreh" placeholder="Scores" required /></p><br>
<p><label>Away Team&nbsp&nbsp&nbsp</label><input type="text" name="away" placeholder="Away Team" required /></p><br>
<p><label>Scores&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label><input type="text" name="scoreA" placeholder="Scores" required /></p><br>
<p><input class="btn btn-primary" name="submit" type="submit" value="Submit" >
</p>
</div>
</form>
<p style="color:#FF0000;"><?php echo $status; ?></p>

<br /><br /><br /><br />

</div>
</div>
 <?php require_once('footer.php');?>
</body>
</html>
