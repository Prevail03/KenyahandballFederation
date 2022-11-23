<?php
include("config.php");
 
if(isset($_POST['but_upload'])){
   $maxsize = 5242880; // 5MB
   if(isset($_FILES['file']['name']) && $_FILES['file']['name'] != ''){
       $name = $_FILES['file']['name'];
       $target_dir = "videos/";
       $target_file = $target_dir . $_FILES["file"]["name"];
       $description=$_POST['description'];
       $email=$_POST['email'];


       // Select file type
       $extension = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

       // Valid file extensions
       $extensions_arr = array("mp4","avi","3gp","mov","mpeg");

       // Check extension
       if( in_array($extension,$extensions_arr) ){
 
          // Check file size
          if(($_FILES['file']['size'] >= $maxsize) || ($_FILES["file"]["size"] == 0)) {
             $_SESSION['message'] = "File too large. File must be less than 5MB.";
          }else{
             // Upload
             if(move_uploaded_file($_FILES['file']['tmp_name'],$target_file)){
               // Insert record
               $query = "INSERT INTO videos(name,location,description) VALUES('".$name."','".$target_file."','".$description."')";

               mysqli_query($con,$query);
               $_SESSION['message'] = "Upload successfully.";
             }
          }

       }else{
          $_SESSION['message'] = "Invalid file extension.";
       }
   }else{
       $_SESSION['message'] = "Please select a file.";
   }
   header('location: uploadvideo.php');
   exit;
} 
?>
<!doctype html> 
<html> 
  <head>
     <title>Upload and Store video to MySQL Database with PHP</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
  <body>
<?php include('includes/header.php');?>
    <!-- Upload response -->
<div class="content-page">
  <div class="content">
   <br><br><br><br><br><br><br><br>
    <?php 
    if(isset($_SESSION['message'])){
       echo $_SESSION['message'];
       unset($_SESSION['message']);
    }
    ?>
    <h1>Upload Short Video Of A Handball Match</h1>
    <form method="post" action="" enctype='multipart/form-data'>
      <input type='file' name='file' />
      <p><b>Description</b><br><input type="text"  name="description" placeholder="Lorem Ipsum" required= "true" ></p>

      <input type='submit' value='Upload' name='but_upload'>
     
    </form>
    <br><br>
    <a class="btn btn-primary" href="readfile.php" role="button">Watch Videos</a>
 </div>
</div>
<?php require_once('includes/footer.php');?> 
  </body>
</html>