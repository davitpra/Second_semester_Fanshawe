<?php
ini_set('display_errors', 1); // set errors
$post = $_POST;
/* FILTER_SANITIZE_STRING (int) is deprecated as of PHP 8.1.0, use strip_tags() instead.*/
$firstName = nl2br(strip_tags($post['firstName']));
$lastName = nl2br(strip_tags($post['lastName']));
$movieName = nl2br(strip_tags($post['movieName']));
$movieSnack = nl2br(strip_tags($post['movieSnack']));
$theater = nl2br(strip_tags($post['theater']));
$generalFeedback = nl2br(strip_tags($post['generalFeedback']));

$FullName = $firstName . " " . $lastName;
$FullNameEncoded = urlencode($FullName);

$newFeedback = str_replace(["bad", "horrible"], ["good", "amazing"], $generalFeedback);

echo "<p>Thank you for your feedback! Below are your survey results</p>";
echo "<p>Full Name: $FullName</p>";
echo "<p>Favourite Movie: $movieName</p>";
echo "<p>Favourite Movie Snack: $movieSnack</p>";
echo "<p>Theatre Seat Row Preference: $theater</p>";
echo "<p>General Feedback: $newFeedback</p>";
echo "<p>Click <a href='part1_form.html?full_name=$FullNameEncoded'>here</a> to return to the survey</p>";
