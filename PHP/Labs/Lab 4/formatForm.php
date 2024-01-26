<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Operators Example</title>
</head>
<body>
    <form action='format.php' method='get'>
        <label for='max'>Enter the maximum for the random number generator:</label>
        <input name='max' id='max' type='number' min=1>
        <br>

        <label for='dec'>Enter the number of decimals you would like to see:</label>
        <input name='dec' id='dec' type='number' min=1 max=4>
        <br>

        <label for='comma'>Enter the punctuation for your decimal delimiter:</label>
        <input name='comma' id='comma' type='text'>
        <br>

        <label for='thousand'>Enter the punctuation for your thousands delimiter:</label>
        <input name='thousand' id='thousand' type='text'>
        <br>

        <button type='submit'>Submit</button>
    </form>
</body>
</html>
