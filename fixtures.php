<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Kenya Handball Federation | Fixtures</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
</head>
<body>
<?php include('includes/header.php');?>
<div class="content-page">
  <div class="content">
      <h1>Kenya Handball Federation</h2>
      <?Php

      echo "
      <br>
      <h1><strong>KENYA HANDBALL FEDERATION NATIONAL LEAGUE MENS' FIXTURES 2021/2022</strong></h1>";
      echo "<style>

      </style>
      </head><body>
      <font face='Times New Roman' size='4'>";
      require "config-pdo.php";
      ////////////
      echo "<div class='row'>
      <div class='col-md-11 offset-md-1'>";
      $q=" SELECT * FROM fixtures WHERE status='Fixture' ";
      echo "<table  class='table table-dark table-striped'>
      <tr class='info'> 
      <th>Date</th>
      <th>  </th>
      <th>Home Team</th>
      <th>Time</th>
      <th>Venue</th>
      <th></th>
      <th>Away Team</th>

      </tr>";

      foreach ($dbo->query($q) as $row) {
      echo "<tr>
      <td>$row[date]</td>

      <td><img src=Admin/HomeTeam/$row[path] class='rounded-circle' alt='$row[homeTeam]' height='50' width='50'></td>
      <td>$row[homeTeam]</td>
      <td>$row[time]</td>
      <td>$row[venue] </td>
      <td><img src=Admin/AwayTeam/$row[imageUrl] class='rounded-circle' alt='$row[awayTeam]' height='50' width='50'></td>
      <td>$row[awayTeam] </td>
      </tr>";
        }
      echo "</table>";


      echo "</div></div>";

      ?>
      <br><hr><br>
      <?Php

      echo "
      <br>
      <h1><strong>KENYA HANDBALL FEDERATION NATIONAL WOMENS' LEAGUE FIXTURES 2021/2022</strong></h1>";
      echo "<style>

      </style>
      </head><body>
      <font face='Times New Roman' size='4'>";
      require "config-pdo.php";
      ////////////
      echo "<div class='row'>
      <div class='col-md-11 offset-md-1'>";
      $q=" SELECT * FROM fixtureswomen WHERE status='Fixture' ";
      echo "<table  class='table table-dark table-striped'>
      <tr class='info'> 
      <th>Date</th>
      <th>  </th>
      <th>Home Team</th>
      <th>Time</th>
      <th>Venue</th>
      <th></th>
      <th>Away Team</th>

      </tr>";

      foreach ($dbo->query($q) as $row) {
      echo "<tr>
      <td>$row[date]</td>

      <td><img src=Admin/HomeTeam/$row[path] class='rounded-circle' alt='$row[homeTeam]' height='50' width='50'></td>
      <td>$row[homeTeam]</td>
      <td>$row[time]</td>
      <td>$row[venue] </td>
      <td><img src=Admin/AwayTeam/$row[imageUrl] class='rounded-circle' alt='$row[awayTeam]' height='50' width='50'></td>
      <td>$row[awayTeam] </td>
      </tr>";
        }
      echo "</table>";


      echo "</div></div>";

      ?>
      <?php require_once('includes/footer.php');?>
</DIV></DIV>
</body>
</html>