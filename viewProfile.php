<?php 
include('functions.php');
 if (!isLoggedIn()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
  }
require('db.php');
$username=$_SESSION['user']['username']; 
$query = "SELECT * from register where username='".$username."'"; 
$result = mysqli_query($con, $query) or die ( mysqli_error());
$row = mysqli_fetch_assoc($result);
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kenya Handball Federation</title>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="home.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<?php require_once('header.php');?>
	<table  id="players" cellspacing="8" cellpadding="5" width="80%" bgcolor="ffffff" align="center">
	<thead>
		<tr><strong>
			<th>#</th>
			<th>Team</th>
			<th>P</th>
			<th>W</th>
			<th>D</th>
			<th>L</th>
			<th>GF</th>
			<th>GA</th>
			<th>GD</th>
			<th>P</th>
			</strong>
		</tr>
	</thead>
	<tbody>
	<?php
		require_once('connection.php');
		$result = $conn->prepare("SELECT * FROM league ORDER BY points DESC");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<tr>
			<td><label><?php echo $row['Position']; ?></label></td>
			<td><label><?php echo $row['Team']; ?></label></td>
			<td><label><?php echo $row['Played']; ?></label></td>
			<td><label><?php echo $row['Wins']; ?></label></td>
			<td><label><?php echo $row['Drawn']; ?></label></td>
			<td><label><?php echo $row['Lost']; ?></label></td>
			<td><label><?php echo $row['GF']; ?></label></td>
			<td><label><?php echo $row['GoalsAllowed']; ?></label></td>
			<td><label><?php echo $row['GoalsDifference']; ?></label></td>
			<td><label><?php echo $row['Points']; ?></label></td>
		</tr>
		<?php } ?>
	</tbody>
</table>