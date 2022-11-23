<?php
include('functions.php');
 if (!isLoggedIn()) {
    $_SESSION['msg'] = "You must log in first";
    header('location: login.php');
  }
  $db = mysqli_connect("localhost", "kenyaha1_root", "tZ75dYYXDpH2", "kenyaha1_khf");

  $msg = "";
  if (isset($_POST['upload'])) {
    
    $image = $_FILES['image']['name'];
    $playerName = mysqli_real_escape_string($db, $_POST['playerName']);
    $location="Players/";
    $imageUrl=$location.$image;
    $target = "Players/".basename($image);


    $sql = "INSERT INTO playerphotos (`path`, playerName) VALUES ('$imageUrl', '$playerName')";
    mysqli_query($db, $sql);

    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
     
        $msg = "Failed to upload image";
    }
  }
?>
<!DOCTYPE html>
<html>
<head>
<title>Kenya Handball Federation</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body>
  <?php include('header.php') ?>
  <a href='dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Dashboard</a>
  <a href='logout.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Logout</a>
<div id="content">
  <div style="color:white ">

  <div class="header">
		<h1>Player Photo</h1>
  <style type="text/css">
  	img{border-radius: 50%;}
  	body{background-color:#34495e}
    .header{
      background-color:#2e86de;
      min-height: 70px;
  }.footer{
      background-color:#2e86de;
      min-height: 70px;
  }
  form{ background: #7f8c8d;}
  </style>
</div>
  <form  method="POST"  action="Player.php" enctype="multipart/form-data">
    <input type="hidden" name="size" value="1000000">
        <div>
         <p><label><b>Player Name<br></b></label><input type="text"  name="playerName" placeholder="Jane Doe" required= "true" size="70" ></p>
    </div>
    <div>
      <input type="file" name="image">
    </div>
<br><br>
    <div>
      <input class="btn btn-primary btn-lg active" name="upload" type="submit" value="Upload">
    </div>
  </div>
    <br><br>
    <a href='playerView.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">View Photos</a>

  </form>
</div>
 <?php require_once('footer.php');?>
</body>
</html>
