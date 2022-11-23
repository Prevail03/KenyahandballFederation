<?php
session_start();
if($_SESSION["loggedin"] !== true){
    header("location: Login.php");
}?>
<?php
session_start();
if($_SESSION["loggedin"] !== true){
    header("location: Login.php");
}
?>

<?php
require_once('dbase.php');
if(isset($_POST['blog_submit'])){
        $HEADER = $_POST['HEADER'];
        $SUB_HEADER = $_POST['SUB_HEADER'];
        $TOPIC=$_POST['TOPIC'];
        $CONTENT=$_POST['CONTENT'];


       $sql = "INSERT INTO `user`(`ID`, `HEADER`, `SUB-HEADER`, `TITLE`, `CONTENT`) VALUES ('', '$HEADER', '$SUB_HEADER', '$TOPIC' , '$CONTENT')";

        insertdata($sql);
header("location:My Page.php");
    }

    ?>





<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>PRO BLOGGERS</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">PRO BLOGGERS</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Logout.php">Log out</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="About.html"target="blank">About</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase">PRO BLOGGERS</h1>
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">YOUR BLOGS ARE HERE .</h2>
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">YOU HAVE THESE  <?php
   $sql = "select * from user";
$link = connect();
        $returned_results = array();
        $result = mysqli_query($link,$sql);
        if(mysqli_num_rows($result)>0){
            $num=0;
            while($row = mysqli_fetch_assoc($result)){
                $num++;
            }
                echo $num;
            }
                ?> BLOGS .</h2>
                   <?php
   $sql = "select * from user";
$link = connect();
		$returned_results = array();
		$result = mysqli_query($link,$sql);
		if(mysqli_num_rows($result)>0){
            $num=0;
			while($row = mysqli_fetch_assoc($result)){
echo "<a class=\"text-white-50 mx-auto mt-2 mb-5\" href=\"Landing Page".$num.
".php\">".$row['HEADER']."</a><br>";
$num++;
			}
		}
        
?>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="about-section text-center" id="about">
            <div class="container">
               
                  
                       <h2 class="text-white mb-4">CREATE NEW BLOG</h2>
                       <form action="My Page.php" method="POST" >
        <label style="color:white;" for="header">HEADER</label><br>
        <input type="text" id="HEADER" name="HEADER"><br>
 <label style="color:white;" for="SUB_HEADER">SUB-HEADER</label><br>
        <input type="text" id="SUB_HEADER" name="SUB_HEADER"><br>
        <label style="color:white;" for="TOPIC">SUB-HEADER</label><br>
        <input type="text" id="TOPIC" name="TOPIC"><br><br>
        <textarea name="CONTENT" style="width: 720px;height:400px;" placeholder="Input blog..."></textarea><br>
        <div class="container-login100-form-btn">
                      <input type="submit" class="login100-form-btn" name="blog_submit" value="SUBMIT">
                    </div>


    </form>

                    
               
                <img class="img-fluid" src="Irungu.png" alt="" />
            </div>
        </section>
        <!-- Projects-->
        <!-- Contact-->
         <section class="contact-section bg-black" style="padding-top: 300px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Address</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50">Nairobi P.O Box 12345</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-envelope text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Email</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"><a href="gmail.com"></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                            <div class="card-body text-center">
                                <i class="fas fa-mobile-alt text-primary mb-2"></i>
                                <h4 class="text-uppercase m-0">Phone</h4>
                                <hr class="my-4" />
                                <div class="small text-black-50"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="https://www.twitter.com/"><i class="fab fa-twitter"></i></a>
                    <a class="mx-2" href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                    <a class="mx-2" href="https://www.github.com/"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer bg-black small text-center text-white-50"><div class="container">Copyright </div></footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>