<?php 

	
function connect(){
		$server = "127.0.0.1";
		$username = "root";
		$password = "";
		$database = "khf";

		//Database Connection
		$conn = mysqli_connect($server,$username,$password,$database);
		if(!$conn){
			die("Connection Not Successful");
		}

		return $conn;
	}

	function InsertData($sql){
		//Get Link from Connect
		$link = connect();

		//Insert into DB
		if(mysqli_query($link,$sql)){
			echo "Registration Successful";
		}else{
			die("Error Inserting Data");
		}
	}

	function ($sql){
		$link = connect();
		$returned_results = array();
		$result = mysqli_query($link,$sql);
		if(mysqli_num_rows($result)>0){
			while($row = mysqli_fetch_assoc($result)){
				$returned_results[] = $row;
			}
		}
		return $returned_results;
	}


?>