<?php
require('db.php');
$status = "";
if(isset($_POST['new']) && $_POST['new']==1)
{

$fname =$_REQUEST['fname'];
$lname = $_REQUEST['lname'];
$gender = $_REQUEST['gender'];
$dob = $_REQUEST['dob'];
$country=$_REQUEST['country'];
$localclub=$_REQUEST['localclub'];
$interclub=$_REQUEST['interclub'];
$ins_query="insert into register (`id`,`fname`,`lname`,`gender`,`dob`,`country`,`localclub,`interclub`) values ('','$fname','$lname','$gender','$dob','$country','$localclub','$interclub')";
mysqli_query($con,$ins_query) or die(mysqll_error());
$status = "New Record Inserted Successfully.</br></br><a href='home.html'>View Inserted Record</a>";
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert New Record</title>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="main.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<div class="form">
<a href='dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Dashboard</a>
<a href='league.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Home</a>
<a href='view.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Results</a>
<div>
<h1>Insert New Record</h1>
<form name="form" method="post" action=""> 
<input type="hidden" name="new" value="1" />
<p><input type="text" name="fname" placeholder="fname" required /></p><br>
<p><input type="text" name="lname" placeholder="lname" required /></p><br>
<p><b>Gender</b>
        <b><input type="radio" name="gender" value="Male" checked="checked">
        Male <input type="radio" name="gender" value="Female"></b>
	   <b>Female</b></p><br>
<p>DOB<input type="date" name="dob" placeholder="Of Birth" required /></p><br>
<p><b>Country of Residence</b></td>
        <select name="country">
		<option>Kenya</option>
		<option>Uganda</option>
		<option>Tanzania</option></select></p>
<p><b>Favorite Local Club</b></td>
        <select name="localclub">
		<option>Kaluluini</option>
		<option>NCPB</option>
		<option>ulinzi</option></select></p>
<p><b>Favorite Internation Club</b></td>
        <select name="interclub">
		<option>PSG</option>
		<option>Vardar</option>
		<option>Zagreb</option>
		<</select></p>				
<p><input name="submit" type="submit" value="Submit" /></p>
</form>
<p style="color:#FF0000;"><?php echo $status; ?></p>

<br /><br /><br /><br />

</div>
</div>
</body>
</html>