<?php 
include('functions.php');
 if (!isLoggedIn()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
  } ?>
<!DOCTYPE html>
<html>
<head>
	<title>Kenya Handball Federation</title>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>

	<link rel="stylesheet" type="text/css" href="main.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link href="home.css" rel="stylesheet" type="text/css">
	<style type="text/css">
		td,th{
			color: black;
		}
		h1{
			text-align: center;
		}
		body {background-color: #2f3542;}
		 img{border-radius: 50%;}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
	<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
</head>
<body>
<?php require_once('header.php');?>
	<a href='home2.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Home</a>

	<!-----men's league standing----->
	<h1><strong><em><img src="images/khfn.jpg" alt="images/khflogo" >
		<div style="color: white">KENYA HANDBALL FEDERATION NATIONAL MENS LEAGUE STANDINGS 2019/2020 SEASON</div></em></strong></h1>
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
 <p><div style="color: white;">Top Six teams when the league ends, participate in the prestigious Kenya Super Cup</div></p>

<!-----women's league standing----->
<h1><strong><em><img src="images/khfn.jpg" alt="khflogo"><div style="color: white">KENYA HANDBALL FEDERATION NATIONAL WOMENS LEAGUE STANDINGS 2019/2020</div></em></strong></h1>
	<table  id="women" cellspacing="8" cellpadding="5" width="80%" bgcolor="ffffff" align="center">
	<thead>
		<tr>
			<strong>
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
		$result = $conn->prepare("SELECT * FROM leaguew ORDER BY points DESC");
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
 &nbsp&nbsp&nbsp<p ><div style="color: white;"><div style="align-content: center;"> Top Four teams when the league ends, participate in the prestigious Kenya Super Cup</div></div></p>
<br /><br /><br /><br />


    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script type="text/javascript">
    	$(document).ready( function () {
    $('#players').DataTable();
} );
    </script>
    
    <script type="text/javascript">
    	$(document).ready( function () {
    $('#women').DataTable();
} );
    </script>
     <?php require_once('footer.php');?>
</body>
</body>
</html>