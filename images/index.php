<!DOCTYPE html>
<html>
<head>
	<title>User</title>
	<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
	<style type="text/css">
		td{
			color: white;
		}
		h1{
			text-align: center;
		}
	</style>
	<!-----men's league standing----->
	<h1><strong><em>KENYA HANDBALL FEDERATION NATIONAL MENS LEAGUE STANDINGS </em></strong></h1>
	<table border="1" cellspacing="5" cellpadding="5" width="100%" bordercolor="blue" bgcolor="blue">
	<thead>
		<tr>
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
			<td><label><?php echo $row['position']; ?></label></td>
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
 <p>Top six teams when the league ends, participate in the prestigious Kenya Super Cup</p>

<!-----women's league standing----->
<h1><strong><em>KENYA HANDBALL FEDERATION NATIONAL WOMENS LEAGUE STANDINGS </em></strong></h1>
	<table border="1" cellspacing="5" cellpadding="5" width="100%" bordercolor="blue" bgcolor="blue">
	<thead>
		<tr>
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
		</tr>
	</thead>
	<tbody>
	<?php
		require_once('connection.php');
		$result = $conn->prepare("SELECT * FROM leaguew ORDER BY points DESC");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<tr>
			<td><label><?php echo $row['position']; ?></label></td>
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
</body>
</html>