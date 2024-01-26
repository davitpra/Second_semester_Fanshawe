<?php

echo "1. ";
$float_var = 30.5;
// In next line, round $float_var to the nearest integer and var_dump() it:
var_dump(round($float_var));

echo '<br>';

echo '2. ';
$numeric_string = '12345';
// In next line, inside if, check if $numeric_string is numeric:
if (is_numeric($numeric_string)) {
    echo 'It is a number';
} else {
    echo 'It not a number';
}
echo '<br>';


echo '3. ';
// Update the values of the below variables so the output is 1:
$num1 = 2;
$num2 = 1;

echo $num1 <=> $num2;
echo '<br>';


echo '4. ';
$total_amount = 12434.453978;
// Using number_format() function, in next line, format $total_amount to 2 decimal places and var_dump() it:
var_dump(number_format($total_amount, 2));

echo '<br>';


echo '5. ';
$index1 = 10;
$index2 = 10;
// For $index1 use increment operator before var(++$a) and var_dump() it:
var_dump(++$index1);
// For $index2 use increment operator after var($a++) and var_dump() it:
var_dump($index2++);


echo '<br>';


echo '6. ';
$int_ten = 10;
$string_ten = '10';

// In next line, compare $int_ten and $string_ten using the equality operator:
if ($int_ten == $string_ten) {
    var_dump('Equal');
} else {
    var_dump('Not Equal');
}
