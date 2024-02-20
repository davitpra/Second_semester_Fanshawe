<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Lab 6 PHP - David Prado</title>
</head>

<body>
  <!-- START FORM -->
  <fieldset>
    <h1>Age Result Generator</h1>
    <form action="#" method="get">
      <label for="age">Please enter your age: </label>
      <input type="text" id="age" name="age" required />
      <br />
      <br />
      <input type="submit" value="Submit" name="submit" />
    </form>
    <br />

    <!-- START PHP -->
    <?php

    // check if 'age' is set in GET request
    if (isset($_GET['age'])) {

      // get the age from the form
      $age = $_GET['age'];

      // check if the age is a number
      $isInteger = is_numeric($age) && is_int($age + 0);

      // check if the age is a number and higher than 0
      if ($isInteger && $age > 0) {

        // display the age
        echo "<p>Your age is: $age</p>";

        // check if the age is an even or odd number
        if ($age % 2 == 0) {
          echo "<p>Your age is an even number</p>";
        } else {
          echo "<p>Your age is an odd number</p>";
        }

        // check if the age is a child, teenager, adult or senior
        if ($age >= 0 && $age <= 12) {
          echo "<p>You are a child</p>";
        } else if ($age >= 13 && $age <= 17) {
          echo "<p>You are a teenager</p>";
        } else if ($age >= 18 && $age <= 54) {
          echo "<p>You are an adult</p>";
        } else {
          echo "<p>You are a senior</p>";
        }

        // print the year of birth
        $year_of_birth = date("Y") - $age;
        echo "<p>You were born in the year: $year_of_birth</p>";

        // check if the year of birth has a significant event
        switch ($year_of_birth) {
          case 1969:
            echo "<p>You were born the same year as the humanity reaches the Moon!</p>";
            break;
          case 1983:
            echo "<p>You were born the same year as the bird of the internet!</p>";
            break;
          case 1986:
            echo "<p>You were born the same year as the Challenger explote!</p>";
            break;
          case 2000:
            echo "<p>You were born the same year as the Y2K!</p>";
            break;
          case 2020:
            echo "<p>You were born during the COVID-19!</p>";
            break;
          default:
            echo "<p>You were born in a year has not a significant year :(</p>";
        }

        // print the same number of hearts as the age
        for ($i = 0; $i < $age; $i++) {
          echo "&hearts;";
        }

        echo "<br>";

        // print how far away the user is from 100 years old
        $years_to_100 = 100 - $age;
        while ($years_to_100 > 0) {
          echo "&star;";
          $years_to_100--;
        }
      } else {
        //display an error message
        echo "Please enter a valid age.";
      }
    }
    ?>
  </fieldset>
</body>

</html>