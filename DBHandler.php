<?php
	error_reporting(0);
	
	class DBHandler{
		private $con;
		
		function __construct(){
			$this->con = mysqli_connect("localhost", "root", "password", "twitterdb");
		}
		
		function runQuery($query){
			$result = mysqli_query($this->con, $query);
		}
		
		function getQueryResult($query){
			$result = mysqli_query($this->con, $query);
			$row = mysqli_fetch_array($result);
			return $row;
		}
	}
?>