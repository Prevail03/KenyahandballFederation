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
  <meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link href="main.css" rel="stylesheet" type="text/css">
	<link href="home.css" rel="stylesheet" type="text/css">
</head>
<body>
	<style type="text/css">body{background-color:  #34495e;}
  div.polaroid {
  width: 100%;
  background-color:  #34495e;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
  align-items: : center;
}
div.absolute {
  position: absolute;
  top: 80px;
  right: 0;
}
 p{color: white;}
 img
	{border-radius: 50%;}
</style>
<?php require_once('header.php');?>
	 <br><br>
<?php  if (isset($_SESSION['user'])) : ?>
          <strong>Welcome  <?php echo $_SESSION['user']['username']; ?></strong><br><br>
          <?php endif ?>

   <div style="color: white">
  <div class="card-group">  
  <div class="card" style="width: 22rem;">
  <div class="polaroid">
  <img src="images/kenya.jpg" class="card-img-top" alt="..." height="219" width="200">
  <div class="card-body">
    <h5 class="card-title"></h5>
    <p class="card-text"><strong>
   <pre><div style="color: white">
    Player Profiles
    Know More About Players
  </div></pre></strong></p>
    <a href="profiles.php" class="btn btn-primary">Player Profiles</a>
  </div>
</div>
</div>

<div class="card" style="width: 22rem;">
  <div class="polaroid">
  <img src="images/league.png" class="card-img-top" alt="..." height="219" width="200">
  <div class="card-body">
    <h5 class="card-title"></h5>
    <p class="card-text"><strong><pre><div style="color: white">
         See How Top Kenyan
            Handball Teams Are Fairing
          </div></pre> </strong></p>
    <a href="league.php" class="btn btn-primary">League Standings</a>
  </div>
</div>
</div>

<div class="card" style="width: 22rem;">
<div class="polaroid">
  <img src="images/khf1.jpg" class="card-img-top" alt="..." height="219" width="200" >
  <div class="card-body">
    <h5 class="card-title"></h5>
    <p class="card-text"><strong><pre><div style="color: white">
      Teams Profile
      Brief Description About Teams
     </div></pre></strong></p>
    <a href="TeamsList.php" class="btn btn-primary">Team Profile</a>
  </div>
</div>
</div>
</div>
</div>
  <a href='changePassword.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Change Profile</a>

<br><br><br><br>

<div data-tockify-component="calendar" data-tockify-calendar="prevailer.muhani"></div>
<script data-cfasync="false" data-tockify-script="embed" src="https://public.tockify.com/browser/embed.js"></script>

<div class="absolute"><a href='logout2.php' class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Logout</a></div>
 <?php require_once('footer.php');?>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </a>
</body>
</html>