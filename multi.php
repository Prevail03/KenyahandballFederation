<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Kenya Handball Federation | Fixtures</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
</head>
<body>
<?php include('includes/header.php');?>
<div class="content-page">
  <div class="content">
<h1>Kenya Handball Federation</h2>
  
<Br><Br><Br><Br><Br><Br>
  <form name="car_form" method="post" action="multi.php">
            <select name="car" id="car">
                    <option value="">Select Team</option>
                    <option value="1|Strathmore University">Strathmore University</option>
                    <option value="2|N.C.P.B">N.C.P.B</option>
                    <option value="3|Black Mamba">Black Mamba</option>
                    <option value="4|Ulinzi Shooters">Ulinnzi Shooters</option>
                    <option value="5|General Service Unit">General Service Unit</option>
            </select>
            <input type="submit" name="submit" id="submit" value="submit">
    </form>
    <?php
    if (isset($_POST['submit'])) {
       
        $resultaway = $_POST['car'];
        $resultaway_explode = explode('|', $resultaway);
        $team_id=  $resultaway_explode[0];
        $teamname= $resultaway_explode[1];

        echo "Team ID: ". $team_id."<br />";
        echo "Team Name: ". $teamname."<br />";

    }
