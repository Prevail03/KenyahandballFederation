  <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
                   <form name="search" action="search.php" method="post">
              <div class="input-group">
           
        <input type="text" name="searchtitle" class="form-control" placeholder="Search for..." required>
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="submit">Go!</button>
                </span>
              </form>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
<?php $query=mysqli_query($con,"select id,CategoryName from tblcategory");
while($row=mysqli_fetch_array($query))
{
?>

                    <li>
                      <a href="category.php?catid=<?php echo htmlentities($row['id'])?>"><?php echo htmlentities($row['CategoryName']);?></a>
                    </li>
<?php } ?>
                  </ul>
                </div>
       
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Recent News</h5>
            <div class="card-body">
                      <ul class="mb-0">
<?php
$query=mysqli_query($con,"select tblposts.id as pid,tblposts.PostTitle as posttitle from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblposts.SubCategoryId limit 8");
while ($row=mysqli_fetch_array($query)) {

?>

  <li>
                      <a href="news-details.php?nid=<?php echo htmlentities($row['pid'])?>"><?php echo htmlentities($row['posttitle']);?></a>
                    </li>
            <?php } ?>
          </ul>
            </div>
          
          </div>
          <h1><strong><div >Top Scorers Men</div></em></strong></h1>
              <table  id="players" cellspacing="8" cellpadding="5" width="15%" bgcolor="ffffff" align="center" class='table  table-striped'>
              <thead>
                <tr><strong>
                  <th> NAME</th>
                  <th>Team</th>
                  <th>POSITION</th>
                  <th>SCORES</th>
                  <th>APPS</th>
                      
                  </strong>
                </tr>
              </thead>
              <tbody>
              <?php
                require_once('connection.php');
                $result = $conn->prepare("SELECT * FROM players ORDER BY scores DESC LIMIT 10");
                $result->execute();
                for($i=0; $row = $result->fetch(); $i++){
              ?>
                <tr>
                  <td><label><?php echo $row['playerName']; ?></label></td>
                  <td><label><?php echo $row['currentTeam']; ?></label></td>
                  <td><label><?php echo $row['position']; ?></label></td>
                  <td><label><?php echo $row['scores']; ?></label></td>
                  <td><label><?php echo $row['gamesPlayed']; ?></label></td>
                  
                  
                </tr>
                <?php } ?>
              </tbody>
            </table>
            <h1><strong><div >Top Scorers Women</div></em></strong></h1>
              <table  id="players" cellspacing="8" cellpadding="5" width="15%" bgcolor="ffffff" align="center" class='table  table-striped'>
              <thead>
                <tr><strong>
                  <th> NAME</th>
                  <th>Team</th>
                  <th>POSITION</th>
                  <th>SCORES</th>
                  <th>APPS</th>
                      
                  </strong>
                </tr>
              </thead>
              <tbody>
              <?php
                require_once('connection.php');
                $result = $conn->prepare("SELECT * FROM playerswomen ORDER BY scores DESC LIMIT 10");
                $result->execute();
                for($i=0; $row = $result->fetch(); $i++){
              ?>
                <tr>
                  <td><label><?php echo $row['playerName']; ?></label></td>
                  <td><label><?php echo $row['currentTeam']; ?></label></td>
                  <td><label><?php echo $row['position']; ?></label></td>
                  <td><label><?php echo $row['scores']; ?></label></td>
                  <td><label><?php echo $row['gamesPlayed']; ?></label></td>
                  
                  
                </tr>
                <?php } ?>
              </tbody>
            </table>
        </div>
