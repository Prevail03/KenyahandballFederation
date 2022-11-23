<?php
session_start();
include('Admin/includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:Admin/index.php');
}
else{ 
include 'DBController.php';
$db_handle = new DBController();
?>
<html>
    <head>
        <title>Kenya Handball Federation</title>
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
        <link href="main.css" rel="stylesheet" type="text/css">
        <link href="home.css" rel="stylesheet" type="text/css">
        <script src="Admin/assets/js/modernizr.min.js"></script>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
    <?php require_once('Admin/includes/topheader.php');?>
    <?php include('Admin/includes/leftsidebar.php');?>
    
    <div class="content-page">
    <div class="content">

        <br>
        <div class="heading">Player Profiles</div>
        <a href='Admin/dashboard.php' class="btn btn-primary  active" role="button" aria-pressed="true">Dashboard</a>
        <div id="gridview">
<?php
$query = $db_handle->runQuery("SELECT * FROM profile ORDER BY profileid ASC");
if (! empty($query)) {
    foreach ($query as $key => $value) {
        ?>  
            <div class="image">
            <?php 
                if(file_exists($query[$key]["path"])) 
                { 
                
            ?>
            <img src="<?php echo $query[$key]["path"] ; ?>" />

            <?php 
                } else { 
            ?>
            <img src="gallery/default.jpeg" />
            <?php
                }
            ?>
            </div>
<?php
    }
}
?>

    </div>

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