<?php
// PART 1: Create an Array

$months = [
    1 => 'January',
    2 => 'February',
    3 => 'March',
    4 => 'April',
    5 => 'May',
    6 => 'June',
    7 => 'July',
    8 => 'August',
    9 => 'September',
    10 => 'October',
    11 => 'November',
    12 => 'December'
];
echo "<h1>Months of the Year</h1>";
print_r($months);

// PART 2: Add to the Array
$months[13] = 'Winter';
$months[14] = 'Construction';

foreach ($months as $number => $month) {
    echo "<p>The month of {$month} is month number {$number}.</p>";
}

//PART 3: Multidimensional Array

echo "<h2>Pizza Toppings</h2>";

$vegetables = ['carrot', 'broccoli', 'spinach'];
$cheeses = ['cheddar', 'mozzarella', 'gouda'];
$meats = ['chicken', 'beef', 'bacon'];

$pizza = [
    'vegetables' => $vegetables,
    'cheeses' => $cheeses,
    'meats' => $meats
];

foreach ($pizza as $type => $toppings) {
    echo "<p>{$type}: " . implode(', ', $toppings) . "</p>";
}

//PART 4: Sorting Arrays
$sizes = [
    'Small' => 6.99,
    'Medium' => 8.99,
    'Large' => 10.99,
    'Extra Large' => 12.99,
    'XXL' => 14.99
];
echo "<br>";

asort($sizes);

foreach ($sizes as $size => $price) {
    echo "<p>{$size}: \${$price}</p>";
}

echo "<br>";

ksort($sizes);

foreach ($sizes as $size => $price) {
    echo "<p>{$size}: \${$price}</p>";
}
