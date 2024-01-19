<?php

    ini_set('display_errors', 1); // set errors

    echo '$_GET: ';
    print_r($_GET); // original data
    echo '<br>';

    echo '$newValue: ';
    $newValue = $_GET['textarea']; // copy textarea value to new var
    echo $newValue;
    echo '<br>';

    $newValue = strip_tags($newValue); // remove tags
    echo '$newValue changed: ';
    echo $newValue; // print value without tags
    echo '<br>';

    echo 'Is $newValue numeric? ';
    echo is_numeric($newValue); // is false so prints nothing

    echo $doesNotExist; // printing var that does not exist should throw an error
    


?>