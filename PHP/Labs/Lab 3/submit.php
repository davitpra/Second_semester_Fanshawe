<?php

ini_set('display_errors', 1); // set errors

// echo '$_POST: ';
// print_r($_POST); // original data
// echo '<br>';

$firstName = $_POST['firstName'];
$lastName = $_POST['lastName'];
$city = $_POST['city'];
$province = $_POST['province'];

$newFirstName = strip_tags($firstName);
$newLastName = strip_tags($lastName);
$newCity = strip_tags($city);
$newProvince = strip_tags($province);

echo "$newFirstName $newLastName is from $newCity, $newProvince.";
