<?php
include("config.php");
?>
<!doctype html>
<html>
  <head>
    <title>Kenya Handball Federation</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
  <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
  <body>
    <?php include('includes/header.php');?>
  
<div class="content-page">
  <div class="content">
   <br><br><br><br><br><br><br><br>
    <div>
 
     <?php
     $fetchVideos = mysqli_query($con, "SELECT name,location,description FROM videos ORDER BY name ASC");
     while($row = mysqli_fetch_assoc($fetchVideos)){
       $location = $row['location'];
       $description = $row['description'];
       echo "<div style='float: left; margin-right: 5px;'>
          <video src='".$location."' controls width='320px' height='320px' ></video>     
          <br>
          <span>".$description."</span>.
       </div>";
     }
     ?>
     <hr>
    </div>
    <br>
   
  </div>
</div>
 <a class="btn btn-primary" href="uploadvideo.php" role="button">Upload More Videos</a>
  </body>
</html>
