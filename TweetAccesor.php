<?php
	error_reporting(0);
	require_once('DBHandler.php');
    
	$handler = new DBHandler();
   
	/*
	fetch tweets from db
	*/
	$hashtag = $_GET["hashtag"];
    $query = "SELECT tweets FROM hashtags WHERE name = '$hashtag'";
	$row = $handler->getQueryResult($query);
	$response = $row["tweets"];
	$tweetIds = array();
	$tweetIds = explode(',', $response);
	$tweetTexts = array();
	foreach  ($tweetIds as $tweetId){
		$tweetId  = trim($tweetId);
		$query = "SELECT text FROM tweets WHERE id = '$tweetId'";
		$row = $handler->getQueryResult($query); 
		array_push($tweetTexts, $row["text"]);
	}
	
    echo json_encode($tweetTexts);
?>