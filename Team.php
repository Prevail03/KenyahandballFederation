<?php
	class Team{
		public $ID;
		public $Gender;
		public $TeamID;
		public $HeadCoach;
		public $Established;
		public $Leagues;
		public $ImageUrl;
		public $Location;
		public $GameStyle;
		public $Achievements;
		public $Goals;
		
		function __construct($id, $gender, $teamID, $headCoach, $established, $leagues, $imageUrl, $location, $gameStyle, $achievements, $goals){
			$this->ID = $id;
			$this->Gender = $gender;
			$this->TeamID = $teamID;
			$this->HeadCoach = $headCoach;
			$this->Established = $established;
			$this->Leagues = $leagues;
			$this->ImageUrl = $imageUrl;
			$this->Location = $location;
			$this->GameStyle = $gameStyle;
			$this->Achievements = $achievements;
			$this->Goals = $goals;
		}
	}
?>