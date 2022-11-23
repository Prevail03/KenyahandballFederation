<?php
include('functions.php');
 if (!isLoggedIn()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
  }
require('db.php');
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kenya Handball Federation</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="home.css">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<style type="text/css">
		table,td,th{
			color: black;
            
		}
		h1{
			text-align: center;
		}
body{ 
	background-color:  #2f3542;
}
 img{border-radius: 50%;}
	</style>

</head>
<body>
<?php require_once('header.php');?>
<div class="form">
<a href='dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Home</a>
<a href='insert.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Enter New Results</a>
<a href='leagueAdmin.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Standings</a>
<a href='logout.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Logout</a>
<br><br><br><br><br>

 <table  cellspacing="5" cellpadding="5" width="80%"  bgcolor="white">
<thead>
<tr>
	<strong>
	<th>Home Team</th>
	<th>Scores</th>
	<th>Away Team</th>
	<th>Scores</th>
	<th>Edit</th>
	<th>Delete</th>
</strong>
</tr>
</thead>

<tbody>
	<?php
		require_once('connection.php');
		$result = $conn->prepare("SELECT * FROM results ORDER BY id DESC");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<tr>
			<td><label><?php echo $row['hometeam']; ?></label></td>
			<td><label><?php echo $row['scorehome']; ?></label></td>
			<td><label><?php echo $row['awayteam']; ?></label></td>
			<td><label><?php echo $row['scoreaway']; ?></label></td>
			<td align="center"><a href="edit.php?id=<?php echo $row["id"]; ?>"><div style="color: black;">Edit</div></a></td>
	        <td align="center"><a href="delete.php?id=<?php echo $row["id"]; ?>"><div style="color: black;">Delete</div></a></td>
		</tr>
		<?php } ?>
	</tbody>
</table>
<br /><br /><br /><br />
</div>
 <?php require_once('footer.php');?>
</body>
</html>
