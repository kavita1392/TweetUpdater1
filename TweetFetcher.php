<?php
	error_reporting(0);
	require_once('DBHandler.php');
    require_once('TwitterAPIExchange.php');
	curl_init();
	curl_setopt($rest, CURLOPT_SSL_VERIFYPEER, false);
	/** Set access tokens here - see: https://dev.twitter.com/apps/ **/
	$settings = array(
		'oauth_access_token' => "147900056-bnK0x7CY55hN35FUhf69NcS2t2d7bnIaLseaMqb1",
		'oauth_access_token_secret' => "w7evxJkIHXgo44zG8rHAkpFQxJUAwWDVzLsb3lwSGTh6a",
		'consumer_key' => "9btsKgMww3ytxWKACqpoJzn2z",
		'consumer_secret' => "GAdPda0e6gxKh2fhfze0k0GREjkpbB4MPilPoXYx8OX2MFS0gB"
	);
	
	class Tweet{
		public $id;
		public $createdAt;
		public $text;
		
		function __construct($id, $createdAt, $text){
			$this->id = $id;
			$this->createdAt = $createdAt;
			$this->text = $text;
		}
	}
	
	/*
	get latest tweets
	*/
	$hashtag = $_GET["hashtag"];
	$url = 'https://api.twitter.com/1.1/search/tweets.json';
	$requestMethod = 'GET';
	$getfield = '?q=%23'.$hashtag;
	$twitter = new TwitterAPIExchange($settings);
	$txtTwitter = $twitter->setGetfield($getfield)->buildOauth($url, $requestMethod)->performRequest();
	$decoded = json_decode( $txtTwitter, true );
	
	$handler = new DBHandler();	
	
	/*
	delete hashtag aand tweets if exist
	*/
	$query = "SELECT tweets FROM hashtags WHERE name = '$hashtag'";
	$row = $handler->getQueryResult($query);
	$response = $row["tweets"];
	$tweetIds = explode(',', $response);
	foreach  ($tweetIds as $tweetId){
		$tweetId  = trim($tweetId);
		$query = "DELETE FROM tweets WHERE id = '$tweetId'";
		$result = $handler->runQuery($query);
	}
	$query = "DELETE FROM hashtags WHERE name = '$hashtag'";
	$handler->runQuery($query);
	
	/*
	insert latest hashtag and tweets
	*/
	$tweetIds = array();
	foreach ( $decoded['statuses'] as $item)
	{   		
		$curTweet = new Tweet($item["id_str"], $item["created_at"], $item["text"]);
		$query = "INSERT INTO tweets (id, text, createdAt) VALUES ('$curTweet->id', '$curTweet->text', '$curTweet->createdAt');";
		$handler->runQuery($query);
		array_push($tweetIds, $item["id_str"]);
	}
	$commaTweetIds = implode(', ', $tweetIds);
	//echo $commaTweetIds;
	$query = "INSERT INTO hashtags (name, tweets) VALUES ('$hashtag', '$commaTweetIds')";
	$handler->runQuery($query);
?>