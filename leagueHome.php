<?php include('includes/header.php');?>
<?PHP
$db_server = "localhost";
$db_username = "root";
$db_password = "";
$db_database = "kenyahandball";
 
$conn = new PDO("mysql:host=$db_server;dbname=$db_database", $db_username, $db_password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Kenya Handball Federation</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
	<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<br><br><Br><br><br><Br><br>
	<!-----men's league standing----->
	<h1><strong><em>
		<div >KENYA HANDBALL FEDERATION NATIONAL MENS' LEAGUE STANDINGS</div></em></strong></h1>
	<table  cellspacing="8" cellpadding="5" width="80%" class='table table-dark table-striped'>
	<thead>
		<tr><strong>
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
	
		$result = $conn->prepare("SELECT
		tname AS Team, Sum(P) AS P,Sum(W) AS W,Sum(D) AS D,Sum(L) AS L,
		SUM(GF) as GF,SUM(GA) AS GA,SUM(GD) AS GD,SUM(Pts) AS Pts
	  FROM(
		SELECT
		  hteam Team,
		  1 P,
		  IF(hscore > ascore,1,0) W,
		  IF(hscore = ascore,1,0) D,
		  IF(hscore < ascore,1,0) L,
		  hscore GF,
		  ascore GA,
		  hscore-ascore GD,
		  CASE WHEN hscore > ascore THEN 2 WHEN hscore = ascore THEN 1 ELSE 0 END PTS
		FROM fixtures
		UNION ALL
		SELECT
		  ateam,
		  1,
		  IF(hscore < ascore,1,0),
		  IF(hscore = ascore,1,0),
		  IF(hscore > ascore,1,0),
		  ascore,
		  hscore,
		  ascore-hscore GD,
		  CASE WHEN hscore < ascore THEN 2 WHEN hscore = ascore THEN 1 ELSE 0 END
		FROM fixtures
	  ) as tot
	  JOIN teams t ON tot.Team=t.id
	  GROUP BY Team
    ORDER BY  SUM(Pts) DESC, SUM(GD) DESC  ;");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<tr>
			<td><label><?php echo $row['Team']; ?></label></td>
			<td><label><?php echo $row['P']; ?></label></td>
			<td><label><?php echo $row['W']; ?></label></td>
			<td><label><?php echo $row['D']; ?></label></td>
			<td><label><?php echo $row['L']; ?></label></td>
			<td><label><?php echo $row['GF']; ?></label></td>
			<td><label><?php echo $row['GA']; ?></label></td>
			<td><label><?php echo $row['GD']; ?></label></td>
			<td><label><?php echo $row['Pts']; ?></label></td>
			
			
			
		</tr>
		<?php } ?>
	</tbody>
</table>
<br><hr>
<h1><strong><em>
		<div >KENYA HANDBALL FEDERATION NATIONAL WOMENS' LEAGUE STANDINGS</div></em></strong></h1>
	<table   cellspacing="8" cellpadding="5" width="80%" class='table table-dark table-striped'>
	<thead>
		<tr><strong>
			<th>Team</th>
			<th>P</th>
			<th>W</th>
			<th>D</th>
			<th>L</th>
			<th>GF</th>
			<th>GA</th>
			<th>GD</th>
			<th>P</th>
			<th>Win Prob</th>
			<th>Loss Prob</th>
			
			
			</strong>
		</tr>
	</thead>
	<tbody>
	<?php
	
		$result = $conn->prepare("SELECT
		tname AS Team, Sum(P) AS P,Sum(W) AS W,Sum(D) AS D,Sum(L) AS L,
		SUM(GF) as GF,SUM(GA) AS GA,SUM(GD) AS GD,SUM(Pts) AS Pts
	  FROM(
		SELECT
		  hteam Team,
		  1 P,
		  IF(hscore > ascore,1,0) W,
		  IF(hscore = ascore,1,0) D,
		  IF(hscore < ascore,1,0) L,
		  hscore GF,
		  ascore GA,
		  hscore-ascore GD,
		  CASE WHEN hscore > ascore THEN 2 WHEN hscore = ascore THEN 1 ELSE 0 END PTS
		FROM fixtureswomen WHERE status = 'Played'
		UNION ALL
		SELECT
		  ateam,
		  1,
		  IF(hscore < ascore,1,0),
		  IF(hscore = ascore,1,0),
		  IF(hscore > ascore,1,0),
		  ascore,
		  hscore,
		  ascore-hscore GD,
		  CASE WHEN hscore < ascore THEN 2 WHEN hscore = ascore THEN 1 ELSE 0 END
		FROM fixtureswomen WHERE status = 'Played'
	  ) as tot
	  JOIN teamswomen t ON tot.Team=t.id
	  GROUP BY Team
    ORDER BY  SUM(Pts) DESC, SUM(GD) DESC ;	  ");
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<tr>
			<td><label><?php echo $row['Team']; ?></label></td>
			<td><label><?php echo $row['P']; ?></label></td>
			<td><label><?php echo $row['W']; ?></label></td>
			<td><label><?php echo $row['D']; ?></label></td>
			<td><label><?php echo $row['L']; ?></label></td>
			<td><label><?php echo $row['GF']; ?></label></td>
			<td><label><?php echo $row['GA']; ?></label></td>
			<td><label><?php echo $row['GD']; ?></label></td>
			<td><label><?php echo $row['Pts']; ?></label></td>
			<?php
		      $win=$row['W'];
		      $Played=$row['P'];
		      $lost=$row['L']; 
		      $win1 = ($win/$Played)*100;
		      $lost1=($lost/$Played)*100;
		       ?>
			<td><label><?php  echo number_format($win1,2) ;echo "%";?></label></td>
			<td><label><?php  echo number_format($lost1,2) ;echo "%";?></label></td>
			
		</tr>
		<?php } ?>
	</tbody>
</table>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script type="text/javascript">
    	$(document).ready( function () {
    $('#players').DataTable();
} );
    </script>
    <script type="text/javascript">
    	$(document).ready( function () {
    $('#men').DataTable();
} );
    </script>

<?php require_once('includes/footer.php');?> 
     
</body>
</body>
</html>