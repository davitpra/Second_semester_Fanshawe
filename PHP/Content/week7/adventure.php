<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Choose Your Own Adventure!</title>
    <style>
        body {
            font-family: "Georgia", serif;
            font-size: 2rem;
            width: 60%;
        }

        ol {
            padding-left: 4rem;
        }

        form input#submit {
            padding: 1rem 2rem;
            text-transform: uppercase;
            font-weight: 600;
            display: block;
            margin: 0.25rem;
            font-size: 1rem;
        }
    </style>
</head>
<body>
    <h1>Choose Your Own Adventure</h1>
    <h2>The Enchanted Forest</h2>

    <p>You find yourself standing at the edge of a dense forest. The trees tower above you, their leaves whispering secrets in the breeze. You have heard rumors of the forest being enchanted, but your curiosity outweighs your fear. Do you:</p>
    <ol>
        <li>Enter the forest.</li>
        <li>Turn around and head home.</li>
        <li>Hang around the entrance while you debate what to do.</li>
    </ol>


    <form name="adventure" action="adventure.php" method="get">
        <label for="option">Enter an option number:</label>
        <input type="text" id="option" name="option">

        <input id="submit" type="submit" name="submit" value="Choose!">
    </form>
    <br>
</body>
</html>