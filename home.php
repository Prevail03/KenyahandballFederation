<!DOCTYPE html>
<html>
 
<head>
	<title>Kenya Handball Federation</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link href="main.css" rel="stylesheet" type="text/css">
	<link href="home.css" rel="stylesheet" type="text/css">
</head>
<style type="text/css"> 
	body{background-color:#34495e}
	#grad1{
		background-image: url("images/kenya.jpg");
        background-repeat: no-repeat;
       
	}
	 div.polaroid {
  width: 100%;
  background-color: #34495e;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 25px;
  align-items: : center;
}
	</style>
<body>
<?php require_once('header.php');?><br><br>
	
	
<style>
h1{
    color:white;
}
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}


/* The dots/bullets/indicatos */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 10.5s;
  animation-name: fade;
  animation-duration: 10.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>


<div class="slideshow-container">

<div class="mySlides fade">
 
  <img src="images/ingwela.jpg" style="width:80%">
  <div class="text">1</div>
</div>

<div class="mySlides fade">
  <img src="images/munene.jpg" style="width:80%">
  <div class="text">2</div>
</div>

<div class="mySlides fade">
  <img src="images/generation.jpg" style="width:80%">
  <div class="text">3</div>
</div>

<div class="mySlides fade">
  <img src="images/kenya.jpg" style="width:80%">
  <div class="text">4</div>
</div>

<div class="mySlides fade">
  <img src="images/UOE.jpg" style="width:80%">
  <div class="text">5</div>
</div>

<div class="mySlides fade">
  <img src="images/Tornadoes.jpg" style="width:80%">
  <div class="text">6</div>
</div>

<div class="mySlides fade">
  <img src="images/cereals.jpg" style="width:80%">
  <div class="text">7</div>
</div>

<div class="mySlides fade">
  <img src="images/team.jpeg" style="width:70%">
  <div class="text">8</div>
</div>

<div class="mySlides fade">
  <img src="images/women2.jpeg" style="width:60%">
  <div class="text">9</div>
</div>

<div class="mySlides fade">
  <img src="images/kenyaW.jpeg" style="width:60%">
  <div class="text">10</div>
</div>


</div>
<br>

<div style="text-align:center">
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 10000); // Change image every 10 seconds
}
</script>
<h1>To Know More About Kenyan Handball <a href='reg.php'>Register</a><h1></h1>
<div data-tockify-component="calendar" data-tockify-calendar="prevailer.muhani"></div>

        <script data-cfasync="false" data-tockify-script="embed" src="https://public.tockify.com/browser/embed.js"></script>
 <?php require_once('footer.php');?>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </a>
     <?php require_once('footer.php');?>
</body>
</html>

