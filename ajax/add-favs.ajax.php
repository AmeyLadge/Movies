<?php

require_once '../php-includes/connect.inc.php';

$userID = $_POST['user_id'];
$movieID = $_POST['movie_id'];

$stmt = $db->prepare("INSERT INTO favourites (movie_id, user_id) VALUES (?, ?)");
$stmt->bind_param('ii', $movieID, $userID);
$stmt->execute();
$stmt->close();

?>