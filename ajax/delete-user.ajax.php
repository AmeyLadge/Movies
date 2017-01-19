<?php

require_once '../php-includes/connect.inc.php';

$userID = $_POST['user_id'];

$stmt = $db->prepare("DELETE FROM movie_goers WHERE user_id = ?");
$stmt->bind_param('i', $userID);
$stmt->execute();
$stmt->close();

$stmt = $db->prepare("DELETE FROM favourites WHERE user_id = ?");
$stmt->bind_param('i', $userID);
$stmt->execute();
$stmt->close();


?>