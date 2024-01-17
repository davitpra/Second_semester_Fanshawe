Hello World!
<?php
echo "This is PHP. <br>";

echo 'This is the first string ' . 'this is the second string ' . 'this is my last string' . '<br>';

echo 'We are in the month of ' . date('F') . '<br>';

$variable = $_REQUEST['my_var'] || '';
echo 'The value in the query string for my_var is ' . $variable . '<br>';

$favorite_ice_cream = 'Rocky Road';
echo 'My favorite flavour of ice cream is ' . $favorite_ice_cream;

$dog_type = 'Collie';
echo 'My dog is a ' . $dog_type;
$dog_type = 12;
echo 'My dog is a ' . $dog_type;

define("ERROR_MSG", "You have encountered an error, click the back button and try again.");
const ERROR_MSG2 = "You have encountered an error, click the back button and try again.";
echo ERROR_MSG;
echo ERROR_MSG2;
