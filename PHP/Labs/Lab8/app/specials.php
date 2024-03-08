<?php
define('TITLE', 'Todays Specials');
date_default_timezone_set('America/Toronto');
include('templates/header.php');
echo '<h2>These are our specials for ' . date('l F j, Y') . '</h2>';
echo '<p>Extra Large Sea Pizza - $15.99</p>';
echo '<p>Toppings:</p>';
echo '<ul><li>Anchovies</li><li>Crab</li> <li>Shrimp</li><li>Tuna</li></ul>';
include('templates/footer.php');
