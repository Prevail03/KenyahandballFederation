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
    $team = mysqli_real_escape_string($db, $_POST['team']);
    $headCoach = mysqli_real_escape_string($db, $_POST['headCoach']);
    $gender = mysqli_real_escape_string($db, $_POST['gender']);
    $established = mysqli_real_escape_string($db, $_POST['established']);
    $leagues = mysqli_real_escape_string($db, $_POST['leagues']);
    $home = mysqli_real_escape_string($db, $_POST['location']);
    $achievements = mysqli_real_escape_string($db, $_POST['achievements']);
    $location="TeamPhotos/";
    $imageUrl=$location.$image;
    $target = "TeamPhotos/".basename($image);


    $sql = "INSERT INTO teamdata (`path`,  team, headCoach, gender, established, leagues, location, achievements) VALUES ('$imageUrl', '$team', '$headCoach', '$gender', '$established', '$leagues', '$home', '$achievements')";
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
<link rel="stylesheet" type="text/css" href="login.css">
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="home.css">
<style type="text/css">
body{background-color:#34495e}

   #content{
    width: 100%;
    margin: 20px auto;
    border: 3px solid #cbcbcb;
    background-color: #2f3542;
   }
   form{
    width: 50%;
    margin: 20px auto;
   }
   form div{
    margin-top: 5px;
   }
    img{border-radius: 50%;}
</style>
</head>
<body>
<?php require_once('header.php');?>
  <a href='dashboard.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Dashboard</a>
  <a href='logout.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Logout</a>
 <div style="color:white ">
    <div class="header">
    <h1>Team Data</h1></div>
  <div style="color:white ">
  <form  method="POST"  action="teamData.php" enctype="multipart/form-data">
    <input type="hidden" name="size" value="1000000">
    <div>
         <p><label><b>Team Name<br></b></label><input type="text"  name="team" placeholder="Black Mamba HC" required= "true" size="70" ></p>
    </div>
    <div>
         <p><label><b>Head Coach<br></b></label><input type="text"  name="headCoach" placeholder="Jane Doe" required= "true" size="70" ></p>
    </div>
    <div>
         <p><label><b>Gender</b></label><br>
       <b> Male </b> </label><input type="radio" name="gender" value="Male" checked="checked">
        <b> Female </b><input type="radio" name="gender" value="Female"></b>
     <b>Other(Rather not Say)</b> <input type="radio" name="gender" value="Other"></b></p> 
    </div>
    <div>
         <p><label><b>Year Established<br></b></label><input type="date"  name="established"  required= "true" size="70" ></p>
    </div>
    <div>
         <p><label><b>Leagues<br></b></label><input type="text"  name="leagues" placeholder="KHF/NAKUSA/NASOKUSA"  required= "true" size="70" ></p>
    </div>
    <div>
         <p><label><b>Location/Training Grounds<br></b></label><input type="text"  name="location" placeholder="Kaloleni"  required= "true" size="70" ></p>
    </div>
    <div>
         <p><label><b>Achievements<br></b></label><input type="text"  name="achievements" placeholder="...."  required= "true" size="70" ></p>
    </div>
    <div>
      <input type="file" name="image">
    </div>

    <div>
      <input class="btn btn-primary btn-lg active" name="upload" type="submit" value="Upload">
    </div>
  </div>
    <br><br>
    

  </form>
</div>
<?php require_once('footer.php');?>
</body>
</html>