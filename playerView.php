<?php
include('functions.php');
 if (!isLoggedIn()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
  }
  $db = mysqli_connect("localhost", "kenyaha1_root", "tZ75dYYXDpH2", "kenyaha1_khf");
   $result = mysqli_query($db, "SELECT * FROM playerphotos ORDER BY id DESC");
?>
<!DOCTYPE html>
<html>

<head>
    <title>Kenya Handball Federation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="main.css" rel="stylesheet" type="text/css">
<link href="home.css" rel="stylesheet" type="text/css">

</head>

<body>
    <style type="text/css">body {background-color:  #34495e;}p{color: white} </style>
    <?php require_once('header.php');?>
<a href='dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Dashboard</a>
<a href='Player.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Upload Player Photos</a>

<a href='logout.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Logout</a>
    <div id="gridview">
        <div class="heading">Player Photos</div>

    </div>
     <?php
    while ($row = mysqli_fetch_array($result)) {
      echo "<div class='image'>";
        echo "<img src='Players/".$row['path']."' >";
        echo "<p>".$row['playerName']."</p>";
      echo "</div>";
      
}
  ?>
 <?php require_once('footer.php');?>
</body>
</html>