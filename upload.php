<?php
session_start();
include('Admin/includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:Admin/index.php');
}
else{ 
  $db = mysqli_connect("localhost", "root", "", "khf");

  $msg = "";
  if (isset($_POST['submit'])) {
    
    $image = $_FILES['image']['name'];
    $image_text = mysqli_real_escape_string($db, $_POST['image_text']);
    $teamName = mysqli_real_escape_string($db, $_POST['name']);
    $location="gallery/";
    $imageUrl=$location.$image;
    $target = "gallery/".basename($image);


    $sql = "INSERT INTO profile (`path`, image_text, name) VALUES ('$imageUrl', '$image_text', '$teamName')";
    mysqli_query($db, $sql);

    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
     
        $msg = "Failed to upload image";
    }
  }
?>
<html>
  <head>
    <title>KHF | Player Profiles</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" type="text/css" href="teamList.css">
    <link rel="stylesheet" href="bootstrap-theme.css">
    <link rel="stylesheet" href="bootstrap-theme.min.css">
    <link href="Admin/assets/css/core.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/components.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/icons.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/pages.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/menu.css" rel="stylesheet" type="text/css" />
      <link href="Admin/assets/css/responsive.css" rel="stylesheet" type="text/css" />
      <link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
      <script src="Admin/assets/js/modernizr.min.js"></script>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
  <body>
  <?php require_once('Admin/includes/topheader.php');?>
  <?php include('Admin/includes/leftsidebar.php');?>
  
  <div class="content-page">
  <div class="content">
  <br><br>

  
 <h2>Player Profile </h2>
  <form  method="POST"  action="upload.php" enctype="multipart/form-data">
    <input type="hidden" name="size" value="1000000">
<div class="form-group m-b-16">
<label for="exampleInputEmail1">Player's Name</label>
<input type="text" class="form-control" id="posttitle" name="image_text" placeholder="Jane Doe" required>
</div>

<div class="form-group m-b-16">
<label for="exampleInputEmail1">Team Name</label>
<input type="text" class="form-control" id="posttitle" name="name" placeholder="Black Mamba" required>
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="card-box">
            <h4 class="m-b-30 m-t-0 header-title"><b>Profile Card</b></h4>
            <input type="file" class="form-control" id="image1" name="image"  required>
        </div>
    </div>
</div>

<button type="submit" name="submit" class="btn btn-success waves-effect waves-light">Save and Post</button>
<button type="button" class="btn btn-danger waves-effect waves-light">Discard</button>
</div>

    <br><br>
    <a href='profileAdmin.php' class="btn btn-success waves-effect waves-light" role="button" aria-pressed="true">View Profiles</a>
    <a href='Admin/dashboard.php' class="btn btn-secondary" role="button" aria-pressed="true">Dashboard</a>
    <br> <br><br>
  </form>
</div>
<?php require_once('Admin/includes/footer.php');?>
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
<?php } ?>