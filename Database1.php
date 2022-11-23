<?php 
	require_once('Team.php');
	require_once('Photo.php');
	class Database{
		private $db_host;
		private $db_user;
		private $db_pass;
		private $db_name;
		function __construct(){
			//init
		$this->db_host = 'localhost';
			$this->db_user = 'root';
			$this->db_pass = '';
			$this->db_name = 'kenyahandball';
		}
		function addPhoto(Photo $photo){
			$conn = mysqli_connect($this->db_host,$this->db_user,$this->db_pass,$this->db_name);
			if (mysqli_connect_errno()){
				return "error" ;
			}
			$name = $photo->Name;
			$image = $photo->ImageUrl;
			$sql = "INSERT INTO teamPhoto (name,imageUrl) VALUES ('$name','$image')";
			if($conn->query($sql)){
				$conn->close();
				return "valid";
			}else{
				$conn->close();
				return "error";
			}
		}
		
		function getPhotos(){
			$conn = mysqli_connect($this->db_host,$this->db_user,$this->db_pass,$this->db_name);
			if (mysqli_connect_errno()){
				return "error" ;
			}
			$sql = "SELECT * FROM `teamPhoto`";
			$photos = array();
			$result = $conn->query($sql);
			if($result->num_rows > 0){
				while($row = $result->fetch_assoc()){
					$ID = $row["id"];
					$Name = $row["name"];
					$ImageUrl = $row["imageUrl"];
					$photo = new Photo($ID, $Name,$ImageUrl);
					array_push($photos,$photo);
				}
				return $photos;
			}
			return 0;
		}
		
		function getPhotoById($id){
			$conn = mysqli_connect($this->db_host,$this->db_user,$this->db_pass,$this->db_name);
			if (mysqli_connect_errno()){
				return "error" ;
			}
			$sql = "SELECT * FROM `teamPhoto` WHERE id='$id'";
			$result = $conn->query($sql);
			if($result->num_rows > 0){
				while($row = $result->fetch_assoc()){
					$ID = $row["id"];
					$Name = $row["name"];
					$ImageUrl = $row["imageUrl"];
					$photo = new Photo($ID, $Name,$ImageUrl);
				}
				return $photo;
			}
			return 0;
		}
		
		function addTeam(Team $team){
			$conn = mysqli_connect($this->db_host,$this->db_user,$this->db_pass,$this->db_name);
			if (mysqli_connect_errno()){
				return "error" ;
			}
			$id = $team->ID;
			$gender = $team->Gender;
			$teamID = $team->TeamID;
			$headCoach = $team->HeadCoach;
			$established = $team->Established;
			$leagues = $team->Leagues;
			$imageUrl = $team->ImageUrl;
			$location = $team->Location;
			$gameStyle = $team->GameStyle;
			$achievements = $team->Achievements;
			$win = $team->Win;
			$loss = $team->Loss;
			$goals = $team->Goals;
// 			$mobile = new Mobile(0,    $gender, $teamName, $headCoach, $established, $leagues, $ImageURL, $location, $gameStyle, $achievements, $win, $loss, $goals);
			$sql = "INSERT INTO teamdetails (gender,teamID,headCoach,established,leagues,logoUrl,location,gameStyle,achievements,win,loss,goals)
				VALUES ('$gender','$teamID','$headCoach','$established','$leagues','$imageUrl','$location','$gameStyle','$achievements','$win','$loss','$goals')";
			
			if($conn->query($sql)){
				$conn->close();
				return "valid";
			}else{
				$conn->close();
				return "error";
			}
		}
		
		
		
		function getTeamById($id){
			$conn = mysqli_connect($this->db_host,$this->db_user,$this->db_pass,$this->db_name);
			if (mysqli_connect_errno()){
				return "error" ;
			}
			$sql = "SELECT * FROM `teamdetails` WHERE id='$id'";
			$result = $conn->query($sql);
			if($result->num_rows > 0){
				while($row = $result->fetch_assoc()){
					$ID = $row["id"];
					$gender = $row["gender"];
					$teamID = $row["teamID"];
					$headCoach = $row["headCoach"];
					$established = $row["established"];
					$leagues = $row["leagues"];
					$imageUrl = $row["logoUrl"];
					$location = $row["location"];
					$gameStyle = $row["gameStyle"];
					$achievements = $row["achievements"];
					$win = $row["win"];
					$loss = $row["loss"];
					$goals = $row["goals"];
				// 	$mobile = new Mobile(0,    $gender, $teamName, $headCoach, $established, $leagues, $ImageURL, $location, $gameStyle, $achievements, $win, $loss, $goals);
					$team = new Team($ID, $gender, $teamID, $headCoach, $established, $leagues, $imageUrl, $location, $gameStyle, $achievements, $win, $loss, $goals);
				}
				return $team;
			}
			return 0;
		}
		
		function getTeamsAsend(){
			$conn = mysqli_connect($this->db_host,$this->db_user,$this->db_pass,$this->db_name);
			if (mysqli_connect_errno()){
				return "error" ;
			}
			$sql = "SELECT * FROM `teamdetails`";
			$Teams = array();
			$result = $conn->query($sql);
			if ($result) {
			if($result->num_rows > 0){
				while($row = $result->fetch_assoc()){
				   $ID = $row["id"];
					$gender = $row["gender"];
					$teamID = $row["teamID"];
					$headCoach = $row["headCoach"];
					$established = $row["established"];
					$leagues = $row["leagues"];
					$imageUrl = $row["logoUrl"];
					$location = $row["location"];
					$gameStyle = $row["gameStyle"];
					$achievements = $row["achievements"];
					$win = $row["win"];
					$loss = $row["loss"];
					$goals = $row["goals"];
					
					$team = new Team($ID, $gender, $teamID, $headCoach, $established, $leagues, $imageUrl, $location, $gameStyle, $achievements, $win, $loss, $goals);
					
					array_push($Teams,$team);
				}
				return $Teams;
			}
			return 0;
		}
		}
	}
?>