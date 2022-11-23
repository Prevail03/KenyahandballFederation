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
	<h1><strong><em>
	<div >KENYA HANDBALL FEDERATION NATIONAL LEAGUE PLAYERS' DATABASE</div></em></strong></h1>
	<table  id="players" cellspacing="8" cellpadding="5" width="80%" class='table table-dark table-striped'>
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
		require_once('connect.php');
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
		FROM games
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
		FROM games
	  ) as tot
	  JOIN teams t ON tot.Team=t.id
	  GROUP BY Team
ORDER BY  SUM(Pts) DESC ;
	  ");
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
   
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script type="text/javascript">
    	$(document).ready( function () {
    $('#players').DataTable();
} );
    </script>
     <?php require_once('includes/footer.php');?>
      <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>
</body>
</html>
