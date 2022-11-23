<?php
require('db.php');
$status = "";
if(isset($_POST['new']) && $_POST['new']==1)
{
$trn_date = date("Y-m-d H:i:s");
$hometeam =$_REQUEST['name'];
$scorehome = $_REQUEST['email'];
$awayteam = $_REQUEST['subject'];
$scoreaway = $_REQUEST['message'];
$ins_query="insert into contact (`date`,`name`,`email`,`subject`,`message`) values ('$trn_date','$hometeam','$scorehome','$awayteam','$scoreaway')";
mysqli_query($con,$ins_query) or die(mysql_error());
$status = "Message sent Successfully.</br></br><a href='view.php'>View Inserted Record</a>";
}
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>KHF</title>
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
<h1>Contact us</h1>
<form name="form" method="post" action=""> 
<input type="hidden" name="new" value="1" />
<p><label>Name</label><input type="text" name="name" placeholder="Name" required /></p><br>
<p><label>Email</label><input type="email" name="email" placeholder="Email" required /></p><br>
<p><label>Subject</label><input type="text" name="subject" placeholder="Subject" required /></p><br>
<p><label>Message</label><textarea name="message" rows="10" cols="30"  placeholder="Type text here...">
</textarea></p>
<p><input class="btn btn-primary" name="submit" type="submit" value="Submit">

</form>
<p style="color:#FF0000;"><?php echo $status; ?></p>

<br /><br /><br /><br />

</div>
</div>
</body>
</html>
